const express = require('express');
const router = express.Router();
const db = require('../db'); // Import the better-sqlite3 database connection
const jwt = require('jsonwebtoken'); // Assuming JWT for auth

// --- Authentication Middleware ---
// This should ideally live in a separate middleware file
const authenticateToken = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1]; // Bearer TOKEN

    if (token == null) return res.sendStatus(401); // if there isn't any token

    // TODO: Replace 'YOUR_SECRET_KEY' with your actual JWT secret from environment variables
    const secret = process.env.JWT_SECRET || 'YOUR_SECRET_KEY';
    if (secret === 'YOUR_SECRET_KEY') {
        console.warn("Using default JWT secret. Please set JWT_SECRET environment variable.");
    }

    jwt.verify(token, secret, (err, user) => {
        if (err) {
            console.error("JWT Verification Error:", err.message);
            return res.sendStatus(403); // Token is no longer valid or incorrect
        }
        // Add user payload (containing id, account_type, etc.) to the request object
        req.user = user;
        console.log("Authenticated user:", req.user); // Log authenticated user info
        next();
    });
};


// --- PUT /api/profile - Update user profile ---
router.put('/', authenticateToken, (req, res) => {
    // Ensure req.user is populated by authenticateToken middleware
    if (!req.user || !req.user.id || !req.user.account_type) {
        console.error("User information missing after authentication.");
        return res.status(401).json({ message: 'Authentication error or missing user data in token.' });
    }

    const userId = req.user.id;
    const accountType = req.user.account_type;
    const { email, firstName, lastName, phone, /* professional fields */ storeName, storeDescription, taxId, address, establishmentType, establishmentWebsite } = req.body;

    // Basic validation
    if (!email && !firstName && !lastName && !phone && !storeName && !storeDescription && !taxId && !address && !establishmentType && !establishmentWebsite) {
        return res.status(400).json({ message: 'No update information provided.' });
    }

    // Use a transaction for atomicity
    const updateUserTransaction = db.transaction(() => {
        // --- Update Users table ---
        if (email) {
            try {
                const stmtUser = db.prepare('UPDATE Users SET email = ? WHERE id = ?');
                stmtUser.run(email, userId);
            } catch (err) {
                // Handle potential unique constraint violation for email
                if (err.code === 'SQLITE_CONSTRAINT_UNIQUE') {
                    throw new Error('Email address already in use.'); // Throw custom error to be caught below
                }
                throw err; // Re-throw other errors
            }
        }

        // --- Update Personal or Professional table ---
        if (accountType === 'personal') {
            const updates = [];
            const params = [];
            if (firstName !== undefined) { updates.push('first_name = ?'); params.push(firstName); }
            if (lastName !== undefined) { updates.push('last_name = ?'); params.push(lastName); }
            if (phone !== undefined) { updates.push('phone = ?'); params.push(phone); } // Assuming 'phone' maps to Personal.phone

            if (updates.length > 0) {
                params.push(userId); // Add userId for the WHERE clause
                const stmtPersonal = db.prepare(`UPDATE Personal SET ${updates.join(', ')} WHERE id = ?`);
                stmtPersonal.run(...params);
            }
        } else if (accountType === 'professional') {
            const updates = [];
            const params = [];
            // Map request body fields to database columns
            if (taxId !== undefined) { updates.push('tax_id = ?'); params.push(taxId); }
            if (storeName !== undefined) { updates.push('store_name = ?'); params.push(storeName); }
            if (storeDescription !== undefined) { updates.push('store_description = ?'); params.push(storeDescription); }
            if (phone !== undefined) { updates.push('phone = ?'); params.push(phone); } // Assuming 'phone' maps to Professional.phone
            if (address !== undefined) { updates.push('address = ?'); params.push(address); }
            if (establishmentType !== undefined) { updates.push('establishment_type = ?'); params.push(establishmentType); }
            if (establishmentWebsite !== undefined) { updates.push('establishment_website = ?'); params.push(establishmentWebsite); }

            if (updates.length > 0) {
                params.push(userId); // Add userId for the WHERE clause
                try {
                    const stmtProf = db.prepare(`UPDATE Professional SET ${updates.join(', ')} WHERE id = ?`);
                    stmtProf.run(...params);
                } catch (err) {
                     // Handle potential unique constraint violations (e.g., tax_id, store_name)
                    if (err.code === 'SQLITE_CONSTRAINT_UNIQUE') {
                         if (err.message.includes('Professional.tax_id')) {
                            throw new Error('Tax ID already in use.');
                         } else if (err.message.includes('Professional.store_name')) {
                             throw new Error('Store name already in use.');
                         }
                    }
                    throw err; // Re-throw other errors
                }
            }
        }
    });

    try {
        updateUserTransaction(); // Execute the transaction
        res.status(200).json({ message: 'Profile updated successfully.' });
    } catch (error) {
        console.error('Error updating profile:', error);
        // Handle specific errors thrown from the transaction
        if (error.message === 'Email address already in use.' || error.message === 'Tax ID already in use.' || error.message === 'Store name already in use.') {
            return res.status(409).json({ message: error.message });
        }
        // Generic error for other issues
        res.status(500).json({ message: 'Failed to update profile due to a server error.' });
    }
});


// --- GET /api/profile - Fetch user profile ---
router.get('/', authenticateToken, (req, res) => {
    // Ensure req.user is populated
    if (!req.user || !req.user.id || !req.user.account_type) {
        console.error("User information missing after authentication for GET /profile.");
        return res.status(401).json({ message: 'Authentication error or missing user data in token.' });
    }

    const userId = req.user.id;
    const accountType = req.user.account_type;

    try {
        let query;
        if (accountType === 'personal') {
            query = `
                SELECT u.id, u.username, u.email, u.account_type, p.first_name, p.last_name, p.phone
                FROM Users u
                JOIN Personal p ON u.id = p.id
                WHERE u.id = ?
            `;
        } else if (accountType === 'professional') {
            query = `
                SELECT u.id, u.username, u.email, u.account_type, pr.tax_id, pr.store_name, pr.store_description, pr.phone, pr.address, pr.establishment_type, pr.establishment_website
                FROM Users u
                JOIN Professional pr ON u.id = pr.id
                WHERE u.id = ?
            `;
        } else {
            // This case should ideally not be reached if account_type in token is validated
            return res.status(400).json({ message: 'Invalid account type found in token.' });
        }

        const stmt = db.prepare(query);
        const profileData = stmt.get(userId); // .get() fetches a single row

        if (!profileData) {
            // This might indicate an inconsistency if the user exists but profile data doesn't
            console.warn(`Profile data not found for user ID: ${userId}, account type: ${accountType}`);
            return res.status(404).json({ message: 'User profile details not found.' });
        }

        res.status(200).json(profileData);

    } catch (error) {
        console.error('Error fetching profile:', error);
        res.status(500).json({ message: 'Failed to fetch profile due to a server error.' });
    }
});


module.exports = router;

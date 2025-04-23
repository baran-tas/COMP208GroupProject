const express = require('express');
const cors = require('cors');
const path = require('path');
// Import routers
const authRoutes = require('../routes/auth'); // Assuming auth routes exist
const profileRoutes = require('../routes/profile'); // Import the new profile routes
// const productRoutes = require('../routes/products'); // Uncomment if you have product routes
// const orderRoutes = require('../routes/orders'); // Uncomment if you have order routes

const app = express();
const PORT = process.env.PORT || 3001; // Use environment variable or default

// Middleware
app.use(cors()); // Enable Cross-Origin Resource Sharing
app.use(express.json()); // Parse JSON request bodies
app.use(express.urlencoded({ extended: true })); // Parse URL-encoded request bodies

// --- API Routes ---
app.use('/api/auth', authRoutes); // Mount authentication routes
app.use('/api/profile', profileRoutes); // Mount profile routes
// app.use('/api/products', productRoutes); // Mount product routes
// app.use('/api/orders', orderRoutes); // Mount order routes

// --- Serve Static Files (Optional - if backend serves frontend build) ---
// Example: Serve static files from a 'public' or 'build' directory
// app.use(express.static(path.join(__dirname, '../public')));

// --- Basic Root Route (Optional) ---
app.get('/', (req, res) => {
  res.send('Backend server is running.');
});

// --- 404 Handler ---
// Catch-all for requests that don't match any route
app.use((req, res, next) => {
  res.status(404).sendFile(path.join(__dirname, '../404.html')); // Send custom 404 page
});

// --- Global Error Handler ---
// Catches errors passed via next(err)
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});

// Remove the old event listener code if it's no longer needed
/*
document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    console.log('Email:', email);
    console.log('Password:', password);
});
*/

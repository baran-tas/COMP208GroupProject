-- Table: Account
CREATE TABLE Account (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Table: ProfessionalAccount
CREATE TABLE ProfessionalAccount (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    business_role TEXT NOT NULL CHECK(business_role IN ('Owner', 'Manager', 'Staff')),
    tax_id TEXT UNIQUE NOT NULL,
    industry TEXT NOT NULL CHECK(industry IN ('Restaurant', 'Cafe', 'Catering', 'Food Truck', 'Other')),
    registration_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    business_website TEXT,
    status TEXT NOT NULL CHECK(status IN ('Active', 'Suspended', 'Pending Approval')),
    FOREIGN KEY (account_id) REFERENCES Account(id)
);


-- Table: Session
CREATE TABLE Session (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    session_token TEXT UNIQUE NOT NULL,
    ip_address TEXT NOT NULL,
    user_agent TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    expires_at DATETIME NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Account(id)
);


-- Table: AccountVerification
CREATE TABLE AccountVerification (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    method TEXT NOT NULL CHECK(method IN ('Email', 'Phone')),
    status TEXT NOT NULL CHECK(status IN ('Unverified', 'Pending', 'Verified')),
    verified_at DATETIME NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Account(id)
);


-- Table: AccountAuthenticity
CREATE TABLE AccountAuthenticity (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    type TEXT NOT NULL CHECK(type IN ('Public Figure', 'Business', 'Influencer', 'Other')),
    status TEXT NOT NULL CHECK(status IN ('Pending', 'Approved', 'Rejected')),
    verified_at DATETIME NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Account(id)
);


-- Table: Establishment
CREATE TABLE Establishment (
    id TEXT PRIMARY KEY,
    business_name TEXT NOT NULL,
    location TEXT NOT NULL,
    contact_number TEXT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Table: EstablishmentProfessional
CREATE TABLE EstablishmentProfessional (
    id TEXT PRIMARY KEY,
    professional_account_id TEXT NOT NULL,
    establishment_id TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN ('Owner', 'Manager', 'Staff')),
    FOREIGN KEY (professional_account_id) REFERENCES ProfessionalAccount(id),
    FOREIGN KEY (establishment_id) REFERENCES Establishment(id)
);


-- Table: Product
CREATE TABLE Product (
    id TEXT PRIMARY KEY,
    establishment_id TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL,
    category TEXT NOT NULL,
    custom_options TEXT, -- Just using text for this
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (establishment_id) REFERENCES Establishment(id)
);


-- Table: "Order"
CREATE TABLE "Order" (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    establishment_id TEXT NOT NULL,
    total_price REAL NOT NULL,
    status TEXT NOT NULL CHECK(status IN ('Pending', 'Processing', 'Completed', 'Cancelled')),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Account(id),
    FOREIGN KEY (establishment_id) REFERENCES Establishment(id)
);


-- Table: OrderItem
CREATE TABLE OrderItem (
    id TEXT PRIMARY KEY,
    order_id TEXT NOT NULL,
    product_id TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    price_at_time REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES "Order"(id),
    FOREIGN KEY (product_id) REFERENCES Product(id)
);


-- Table: Review
CREATE TABLE Review (
    id TEXT PRIMARY KEY,
    account_id TEXT NOT NULL,
    reviewable_id TEXT NOT NULL,
    reviewable_type TEXT NOT NULL CHECK(reviewable_type IN ('Establishment', 'Product')),
    rating_category TEXT NOT NULL CHECK(rating_category IN ('Service', 'Quality', 'Price', 'Experience', 'Other')),
    rating INTEGER NOT NULL CHECK(rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Account(id)
);

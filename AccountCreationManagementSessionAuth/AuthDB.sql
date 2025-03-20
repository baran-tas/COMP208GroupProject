--This table should serve as a decent starting point

--Table to manage users
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic user ids
    username TEXT NOT NULL UNIQUE, --Username based on some criterion
    email TEXT NOT NULL UNIQUE, --Takes email, could also add a field for phone number
    password TEXT NOT NULL, --Hash the password then store it
    account_type TEXT CHECK(account_type IN ('personal', 'professional')) NOT NULL, --Determines the account type
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --Saves the timestamp at which the account was created, why not?
);

--Table for users with a personal account
CREATE TABLE Personal (
    id INTEGER PRIMARY KEY, --Foreign key to Users table
    first_name TEXT NOT NULL, --First name of personal account user
    last_name TEXT NOT NULL, --Last name of personal account user
    phone TEXT, --You don't need a phone number, could have it though
    FOREIGN KEY(id) REFERENCES Users(id) --Establishes foreign key constraint
);

--Table for users with a professional account
--Optional: Could make it one to many at some point, but that's a matter of getting a minimum viable product soon enough
CREATE TABLE Professional (
    id INTEGER PRIMARY KEY,  --Foreign key to Users table
    tax_id TEXT NOT NULL UNIQUE, --Stores the store's tax id
    store_name TEXT NOT NULL UNIQUE, --Stores the store's name
    store_description TEXT, --Stores the store's description, can be null
    phone TEXT NOT NULL, --Stores the store's number
    address TEXT NOT NULL, --Stores the store's address
    establishment_type TEXT CHECK(establishment_type IN ('Cafe', 'Restaurant', 'Food Truck', 'Fast Food')) NOT NULL, --Stores the store's type
    establishment_website TEXT, --Stores the establishment's website
    FOREIGN KEY(id) REFERENCES Users(id) --Establishes foreign key constraint
);

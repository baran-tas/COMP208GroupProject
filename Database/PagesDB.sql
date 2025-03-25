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

--Table to manage products
CREATE TABLE Products (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic product ids
    professional_id INTEGER NOT NULL, --Foreign key to Professional table
    name TEXT NOT NULL, --Stores product's name
    description TEXT, --Stores a description of the product
    price REAL NOT NULL, --Stores the price of the product
    image_url TEXT, --Stores the product's image
    is_available INTEGER DEFAULT 1 CHECK(is_available IN (0, 1)), --Stores flag to determine availability
    FOREIGN KEY(professional_id) REFERENCES Professional(id) --Establishes foreign key constraint
);

--Table to manage orders
CREATE TABLE Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic order ids
    user_id INTEGER NOT NULL, --Foreign key to Personal table
    store_id INTEGER NOT NULL, --Foreign key to Professional table
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the order's timestamp
    total REAL NOT NULL, --Stores the order's total cost
    status TEXT CHECK(status IN ('pending', 'completed', 'cancelled')) NOT NULL, --Stores the order's status
    FOREIGN KEY(user_id) REFERENCES Personal(id), --Establishes foreign key constraint
    FOREIGN KEY(store_id) REFERENCES Professional(id) --Establishes foreign key constraint
);

--Table to manage reviews
CREATE TABLE Reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic review ids
    user_id INTEGER NOT NULL, --Foreign key to Personal table
    product_id INTEGER NOT NULL, --Foreign key to Products table
    rating INTEGER CHECK(rating BETWEEN 1 AND 5) NOT NULL, --Stores the rating
    comment TEXT, --Stores the review text
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the review's timestamp
    FOREIGN KEY(user_id) REFERENCES Personal(id), --Establishes foreign key constraint
    FOREIGN KEY(product_id) REFERENCES Products(id) --Establishes foreign key constraint
);

--Table to manage basket items
CREATE TABLE Basket (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic basket item ids
    user_id INTEGER NOT NULL, --Foreign key to the Personal table
    product_id INTEGER NOT NULL, --Foreign key to the Products table
    quantity INTEGER NOT NULL DEFAULT 1, --Stores the number of units of product
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the timestamp of when the item was added
    FOREIGN KEY(user_id) REFERENCES Personal(id), --Establishes foreign key constraint
    FOREIGN KEY(product_id) REFERENCES Products(id) --Establishes foreign key constraint
);
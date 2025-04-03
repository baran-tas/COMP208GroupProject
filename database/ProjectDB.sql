--Table to manage users
CREATE TABLE Users (
    id INT NOT NULL AUTO_INCREMENT, --Automatic user ids
    username VARCHAR(255) NOT NULL UNIQUE, --Username based on some criterion
    email VARCHAR(255) NOT NULL UNIQUE, --Takes email, could also add a field for phone number
    password VARCHAR(255) NOT NULL, --Hash the password then store it
    account_type ENUM('personal', 'professional') NOT NULL, --Determines the account type
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Saves the timestamp at which the account was created, why not?
    PRIMARY KEY (id) --Primary key constraint
);

--Table for users with a personal account
--Optional: Could make it one to many at some point, but that's a matter of getting a minimum viable product soon enough
CREATE TABLE Personal (
    id INT NOT NULL, --Stores the id
    first_name VARCHAR(255) NOT NULL, --First name of personal account user
    last_name VARCHAR(255) NOT NULL, --Last name of personal account user
    phone VARCHAR(11), --You don't need a phone number, could have it though
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (id) REFERENCES Users(id) --Foreign key to Users table
);

--Table for users with a professional account
CREATE TABLE Professional (
    id INT NOT NULL, --Stores the id
    tax_id VARCHAR(50) NOT NULL UNIQUE, --Stores the store's tax id
    store_name VARCHAR(255) NOT NULL UNIQUE, --Stores the store's name
    store_description TEXT, --Stores the store's description, can be null
    phone VARCHAR(20) NOT NULL, --Stores the store's number
    address VARCHAR(255) NOT NULL, --Stores the store's address
    establishment_type ENUM('Cafe', 'Restaurant', 'Food Truck', 'Fast Food') NOT NULL, --Stores the store's type
    establishment_website VARCHAR(255), --Stores the establishment's website
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (id) REFERENCES Users(id) --Foreign key to Users table
);

--Table to manage products
CREATE TABLE Products (
    id INT NOT NULL AUTO_INCREMENT, --Automatic product ids
    professional_id INT NOT NULL, --Foreign key to Professional table
    name VARCHAR(255) NOT NULL, --Stores product's name
    description TEXT, --Stores a description of the product
    price DECIMAL(10,2) NOT NULL, --Stores the price of the product
    image_url VARCHAR(255), --Stores the product's image
    is_available TINYINT(1) DEFAULT 1, --Stores flag to determine availability
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (professional_id) REFERENCES Professional(id) --Foreign key to Professional table
);

--Table to manage orders
CREATE TABLE Orders (
    id INT NOT NULL AUTO_INCREMENT, --Automatic order ids
    user_id INT NOT NULL, --Foreign key to Personal table
    store_id INT NOT NULL, --Foreign key to Professional table
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the order's timestamp
    total DECIMAL(10,2) NOT NULL, --Stores the order's total cost
    status ENUM('pending', 'completed', 'cancelled') NOT NULL,
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (user_id) REFERENCES Personal(id), --Foreign key to Personal table
    FOREIGN KEY (store_id) REFERENCES Professional(id) --Foreign key to Professional table
);

--Table to manage reviews
CREATE TABLE Reviews (
    id INT NOT NULL AUTO_INCREMENT, --Automatic review ids
    user_id INT NOT NULL, --Foreign key to Personal table
    product_id INT NOT NULL, --Foreign key to Products table
    rating INT NOT NULL, --Stores the rating
    comment TEXT, --Stores the review text
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the review's timestamp
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (user_id) REFERENCES Personal(id), --Foreign key to Personal table
    FOREIGN KEY (product_id) REFERENCES Products(id), --Foreign key to Products table
    CHECK (rating BETWEEN 1 AND 5) --Checks if the rating is between 1 and 5
);

--Table to manage basket items
CREATE TABLE Basket (
    id INT NOT NULL AUTO_INCREMENT, --Automatic basket item ids
    user_id INT NOT NULL, --Foreign key to the Personal table
    product_id INT NOT NULL, --Foreign key to the Products table
    quantity INT NOT NULL DEFAULT 1, --Stores the number of units of product
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the timestamp of when the item was added
    PRIMARY KEY (id), --Primary key constraint
    FOREIGN KEY (user_id) REFERENCES Personal(id), --Foreign key to Personal table
    FOREIGN KEY (product_id) REFERENCES Products(id) --Foreign key to Products table
);

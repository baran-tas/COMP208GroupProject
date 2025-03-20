--Should be a decent starting point

--Table to manage products
CREATE TABLE Products (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic product ids
    professional_id INTEGER NOT NULL, --Foreign key to Professional table
    name TEXT NOT NULL, --Stores product's name
    description TEXT, --Stores a description of the product
    price REAL NOT NULL, --Stores the price of the product
    image_url TEXT, --Stores the product's image
    is_available INTEGER DEFAULT 1 CHECK(is_available IN (0, 1), --Stores flag to determine availability
    FOREIGN KEY(professional_id) REFERENCES Professional(id) --Establishes foreign key constraint
);

--Table to manage orders
CREATE TABLE Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic order ids
    user_id INTEGER NOT NULL, --Foreign key to Personal table
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --Stores the order's timestamp
    total REAL NOT NULL, --Stores the order's total cost
    status TEXT CHECK(status IN ('pending', 'completed', 'cancelled')) NOT NULL, --Stores the order's status
    FOREIGN KEY(user_id) REFERENCES Personal(id) --Establishes foreign key constraint
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

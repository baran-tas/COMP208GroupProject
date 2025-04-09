--Table to manage users
CREATE TABLE Users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    account_type ENUM('personal', 'professional') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

--Table for users with a personal account
CREATE TABLE Personal (
    id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone VARCHAR(11),
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Users(id)
);

--Table for users with a professional account
CREATE TABLE Professional (
    id INT NOT NULL,
    tax_id VARCHAR(50) NOT NULL UNIQUE,
    store_name VARCHAR(255) NOT NULL UNIQUE,
    store_description TEXT,
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(255) NOT NULL,
    establishment_type ENUM('Cafe', 'Restaurant', 'Food Truck', 'Fast Food') NOT NULL,
    establishment_website VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Users(id)
);

--Table to manage products
CREATE TABLE Products (
    id INT NOT NULL AUTO_INCREMENT,
    professional_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    image_url VARCHAR(255),
    is_available TINYINT(1) DEFAULT 1,
    PRIMARY KEY (id),
    FOREIGN KEY (professional_id) REFERENCES Professional(id)
);

--Table to manage orders
CREATE TABLE Orders (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    store_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Personal(id),
    FOREIGN KEY (store_id) REFERENCES Professional(id)
);

--Table to manage reviews
CREATE TABLE Reviews (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    rating INT NOT NULL,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Personal(id),
    FOREIGN KEY (product_id) REFERENCES Products(id),
    CHECK (rating BETWEEN 1 AND 5)
);

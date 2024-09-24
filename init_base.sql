-- Create table Categories
CREATE TABLE
    Categories (
        category_id UUID PRIMARY KEY,
        category_name VARCHAR(255) NOT NULL,
        category_description TEXT
    );

-- create table Products
CREATE TABLE
    Products (
        product_id UUID PRIMARY KEY,
        product_name VARCHAR(255) NOT NULL,
        product_description TEXT,
        product_price DECIMAL(10, 2) NOT NULL,
        product_stock_quantity INT NOT NULL,
        category_id UUID NOT NULL, -- Foreign key to Categories
        FOREIGN KEY (category_id) REFERENCES Categories (category_id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Users
CREATE TABLE
    Users (
        user_id UUID PRIMARY KEY,
        user_first_name VARCHAR(255) NOT NULL,
        user_last_name VARCHAR(255) NOT NULL,
        user_email VARCHAR(255) NOT NULL,
        user_phone_number VARCHAR(255),
        user_password_hash VARCHAR(255) NOT NULL,
        user_role VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Reviews
CREATE TABLE
    Reviews (
        review_id UUID PRIMARY KEY,
        user_id UUID NOT NULL, -- Foreign key to Users
        FOREIGN KEY (user_id) REFERENCES Users (user_id),
        product_id UUID NOT NULL, -- Foreign key to Products
        FOREIGN KEY (product_id) REFERENCES Products (product_id),
        review_rating INT NOT NULL,
        review_comment TEXT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Shopping_Cart
CREATE TABLE
    Shopping_Cart (
        cart_id UUID PRIMARY KEY,
        user_id UUID NOT NULL, -- Foreign key to Users
        FOREIGN KEY (user_id) REFERENCES Users (user_id),
        product_id UUID NOT NULL, -- Foreign key to Products
        FOREIGN KEY (product_id) REFERENCES Products (product_id),
        cart_quantity INT NOT NULL,
        added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Orders
CREATE TABLE
    Orders (
        order_id UUID PRIMARY KEY,
        user_id UUID NOT NULL, -- Foreign key to Users
        FOREIGN KEY (user_id) REFERENCES Users (user_id),
        order_total_price DECIMAL(10, 2) NOT NULL,
        order_status VARCHAR(255) NOT NULL,
        order_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        order_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Order_Items
CREATE TABLE
    Order_Items (
        order_item_id UUID PRIMARY KEY,
        order_id UUID NOT NULL, -- Foreign key to Orders
        FOREIGN KEY (order_id) REFERENCES Orders (order_id),
        product_id UUID NOT NULL, -- Foreign key to Products
        FOREIGN KEY (product_id) REFERENCES Products (product_id),
        order_item_quantity INT NOT NULL,
        order_item_price DECIMAL(10, 2) NOT NULL
    );

-- create table Payment
CREATE TABLE
    Payment (
        payment_id UUID PRIMARY KEY,
        order_id UUID NOT NULL, -- Foreign key to Orders
        FOREIGN KEY (order_id) REFERENCES Orders (order_id),
        payment_method VARCHAR(255) NOT NULL,
        payment_status VARCHAR(255) NOT NULL,
        payment_amount_paid DECIMAL(10, 2) NOT NULL,
        payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- create table Shipping
CREATE TABLE
    Shipping (
        shipping_id UUID PRIMARY KEY,
        order_id UUID NOT NULL, -- Foreign key to Orders
        FOREIGN KEY (order_id) REFERENCES Orders (order_id),
        shipping_address TEXT NOT NULL,
        shipping_city VARCHAR(255) NOT NULL,
        shipping_state VARCHAR(255) NOT NULL,
        shipping_postal_code VARCHAR(255) NOT NULL,
        shipping_country VARCHAR(255) NOT NULL,
        shipping_status VARCHAR(255) NOT NULL,
        shipping_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
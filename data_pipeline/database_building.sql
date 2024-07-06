
USE retail_database;

-- Create the customer_info Table
CREATE TABLE IF NOT EXISTS customer_info (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Zipcode VARCHAR(10),
    Country VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Income VARCHAR(50),
    Customer_Segment VARCHAR(50)
);


-- Create the transactions_details Table
CREATE TABLE IF NOT EXISTS transactions_details (
    Transaction_ID INT PRIMARY KEY,
    Customer_ID INT,
    Date DATE,
    Year INT,
    Month VARCHAR(20),
    Time TIME,
    Total_Purchases INT,
    Amount DECIMAL(10, 2),
    Total_Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_ID) REFERENCES customer_info(Customer_ID)
);

-- Create the transaction_logistics Table
CREATE TABLE IF NOT EXISTS transaction_logistics (
    Transaction_ID INT PRIMARY KEY,
    Shipping_Method VARCHAR(100),
    Payment_Method VARCHAR(100),
    Order_Status VARCHAR(50),
    FOREIGN KEY (Transaction_ID) REFERENCES transactions_details(Transaction_ID)
);

-- Create the product_info Table
CREATE TABLE IF NOT EXISTS product_info (
    Product_ID VARCHAR(20) PRIMARY KEY,
    Product_Category VARCHAR(100),
    Product_Brand VARCHAR(100),
    Product_Type VARCHAR(100),
    products VARCHAR(255)
);

-- Create the feedback Table
CREATE TABLE IF NOT EXISTS feedback (
    Feedback_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID VARCHAR(20),
    Customer_ID INT,
    Feedback TEXT,
    Ratings DECIMAL(3, 2),
    FOREIGN KEY (Product_ID) REFERENCES product_info(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES customer_info(Customer_ID)
);

-- Add indexes to frequently queried columns
CREATE INDEX idx_customer_id ON transactions_details (Customer_ID);
CREATE INDEX idx_product_id ON feedback (Product_ID);
CREATE INDEX idx_feedback_customer_id ON feedback (Customer_ID);
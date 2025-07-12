CREATE TABLE Customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(7,2)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total DECIMAL(9,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE OrderItems (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);

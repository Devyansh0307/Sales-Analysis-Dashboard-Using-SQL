-- Create tables
CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

-- Insert data
INSERT INTO customers VALUES
(1, 'John Smith', 'USA'),
(2, 'Alice Brown', 'UK'),
(3, 'Ahmed Ali', 'UAE');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 800),
(2, 'Smartphone', 'Electronics', 500),
(3, 'Headphones', 'Accessories', 100);

INSERT INTO orders VALUES
(101, 1, 1, 1, '2024-01-10'),
(102, 2, 2, 2, '2024-01-15'),
(103, 3, 3, 3, '2024-02-05'),
(104, 1, 2, 1, '2024-03-12');
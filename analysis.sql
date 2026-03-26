-- Create Database
CREATE DATABASE retail_sales;
USE retail_sales;

-- Create Table
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);

-- Insert Sample Data
INSERT INTO sales VALUES
(1, 'Amit', 'Laptop', 'Electronics', 1, 60000, '2024-01-10'),
(2, 'Ravi', 'Phone', 'Electronics', 2, 20000, '2024-01-12'),
(3, 'Sneha', 'Shoes', 'Fashion', 3, 1500, '2024-01-15'),
(4, 'Amit', 'Headphones', 'Electronics', 2, 2000, '2024-01-20'),
(5, 'Priya', 'Dress', 'Fashion', 1, 2500, '2024-01-22'),
(6, 'Ravi', 'Tablet', 'Electronics', 1, 30000, '2024-01-25');

-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue FROM sales;

-- Revenue by Category
SELECT category, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;

-- Top Customers
SELECT customer_name, SUM(quantity * price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Monthly Sales
SELECT MONTH(order_date) AS month, SUM(quantity * price) AS revenue
FROM sales
GROUP BY MONTH(order_date);

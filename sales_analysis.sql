-- Sales Data Analysis
-- Author: Mukhammad Tursunaliev

-- Create a sales table
CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    month TEXT,
    product TEXT,
    amount DECIMAL,
    region TEXT
);

-- Insert sample data
INSERT INTO sales VALUES (1, 'January', 'Laptop', 1200, 'North');
INSERT INTO sales VALUES (2, 'January', 'Phone', 850, 'South');
INSERT INTO sales VALUES (3, 'February', 'Laptop', 1500, 'North');
INSERT INTO sales VALUES (4, 'February', 'Phone', 920, 'East');
INSERT INTO sales VALUES (5, 'March', 'Tablet', 1100, 'South');
INSERT INTO sales VALUES (6, 'March', 'Phone', 780, 'West');
INSERT INTO sales VALUES (7, 'April', 'Laptop', 1350, 'East');

-- Total sales amount
SELECT SUM(amount) AS total_sales
FROM sales;

-- Average sales per month
SELECT month, AVG(amount) AS avg_sales
FROM sales
GROUP BY month;

-- Best selling product
SELECT product, SUM(amount) AS total
FROM sales
GROUP BY product
ORDER BY total DESC;

-- Sales by region
SELECT region, COUNT(*) AS num_sales, SUM(amount) AS total
FROM sales
GROUP BY region
ORDER BY total DESC;

-- Find sales above average
SELECT month, product, amount
FROM sales
WHERE amount > (SELECT AVG(amount) FROM sales);

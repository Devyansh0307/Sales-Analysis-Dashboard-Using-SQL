-- Total Revenue
SELECT 
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- Revenue by product Category
SELECT 
    p.category,
    SUM(o.quantity * p.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;

-- Monthly Sales trend
SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY month;

-- Top Selling Product
SELECT 
    p.product_name,
    SUM(quantity) AS total_quantity_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;

-- Sales by Country
SELECT 
    c.country,
    SUM(o.quantity * p.price) AS country_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.country;
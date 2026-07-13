SELECT * FROM sales;
SELECT * FROM sales;
SELECT SUM(quantity * price) AS total_sales
FROM sales;
SELECT category,
       SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY category;
SELECT city,
       SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY city;
SELECT product_name,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC;
SELECT *
FROM sales
ORDER BY price DESC
LIMIT 1;
SELECT *
FROM sales
WHERE category = 'Electronics';
SELECT *
FROM sales
WHERE city = 'Hyderabad';
SELECT category,
       AVG(price) AS average_price
FROM sales
GROUP BY category;
SELECT category,
       SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
HAVING revenue > 20000;
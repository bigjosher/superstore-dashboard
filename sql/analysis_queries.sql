-- Monthly Sales Trend
SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY month
ORDER BY month;

-- Top Customers
SELECT customer_name, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Category Performance
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore_orders
GROUP BY category
ORDER BY total_sales DESC;

-- Region-Segment Sales
SELECT region, segment, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY region, segment
ORDER BY region;

-- Discount vs. Profit
SELECT discount, SUM(profit) AS total_profit
FROM superstore_orders
GROUP BY discount
ORDER BY discount;

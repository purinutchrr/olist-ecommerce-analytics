SELECT
	strftime('%Y-%m', o.order_purchase_timestamp) AS month_year,
	SUM(oi.price) AS total_revenue,
	COUNT(DISTINCT o.order_id) AS total_orders
FROM orders AS o
JOIN order_items AS oi ON o.order_id = oi.order_id 
WHERE o.order_status = 'delivered'
GROUP BY month_year
ORDER BY month_year;
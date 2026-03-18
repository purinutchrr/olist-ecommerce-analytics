SELECT
	p.product_category_name AS product_category,
	ROUND(SUM(oi.price), 2) AS total_revenue,
	COUNT(oi.order_id) AS total_sold
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.product_id
JOIN orders AS o ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;
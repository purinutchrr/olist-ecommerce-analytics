SELECT 
    date(o.order_purchase_timestamp) AS order_date,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price) AS daily_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE order_purchase_timestamp BETWEEN '2017-11-01' AND '2017-11-30'
GROUP BY order_date
ORDER BY order_date;
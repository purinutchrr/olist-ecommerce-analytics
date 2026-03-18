SELECT
	payment_type,
	SUM(payment_value) AS total_payment_value,
	AVG(payment_value) AS avg_payment_value,
    AVG(payment_installments) AS avg_installments
FROM order_payments
GROUP BY payment_type
ORDER BY total_payment_value DESC;
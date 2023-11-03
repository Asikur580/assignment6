SELECT o.id, p.name, oi.quantity, oi.quantity * p.price AS total_amount
FROM order_items oi
JOIN orders o ON oi.order_id = o.id
JOIN products p ON oi.product_id = p.id
ORDER BY o.id ASC;




SELECT c.id, c.name, SUM(p.price * oi.quantity) AS total_revenue
FROM products p
JOIN order_items oi ON p.id = oi.product_id
JOIN categories c ON p.category_id = c.id
GROUP BY c.id
ORDER BY total_revenue DESC;



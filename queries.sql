-- 1. Orders with customer names
SELECT o.id AS OrderID, o.order_date, CONCAT(c.first_name, ' ', c.last_name) AS Customer
FROM Orders o
JOIN Customers c ON o.customer_id = c.id;

-- 2. Quantity sold per product
SELECT p.name, SUM(oi.quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.id
GROUP BY p.name;

-- 3. Revenue per product
SELECT p.name, SUM(oi.quantity * p.price) AS Revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY Revenue DESC;

-- 4. Customers with multiple orders
SELECT c.first_name, c.last_name, COUNT(*) AS Orders
FROM Orders o
JOIN Customers c ON o.customer_id = c.id
GROUP BY c.id
HAVING COUNT(*) > 1;

-- 5. Products never sold
SELECT p.name
FROM Products p
LEFT JOIN OrderItems oi ON p.id = oi.product_id
WHERE oi.product_id IS NULL;

-- 6. Orders above average total
SELECT id, total
FROM Orders
WHERE total > (SELECT AVG(total) FROM Orders);

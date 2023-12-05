USE northwind;
-- 7. What is the category ID of each supplier and the average price of each item in the category?
SELECT CategoryID , AVG(UnitPrice)
FROM products
GROUP BY CategoryID;

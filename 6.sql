USE northwind;
-- 6. What is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID , COUNT(ProductID)
FROM products
GROUP BY SupplierID;


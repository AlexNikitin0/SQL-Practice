USE northwind;
-- 8. For suppliers that provide atleast 5 items to NorthWind, what is the supplier ID of each suplier and the number of items they supply?
SELECT supplierID  , UnitsInStock
FROM products
WHERE UnitsInStock > 4
ORDER BY supplierID;
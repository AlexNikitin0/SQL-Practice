USE northwind;

-- 1. add a new supplier

INSERT INTO suppliers(supplierID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone)
VALUES(30,"Best Company Ever", "James", "Manager","123 Fake Street","Charlotte","NC","28311","USA","7045577766");

-- 2 add a new product provided by that supplier

INSERT INTO products(productID,productName,supplierID,CategoryID,QuantityPerUnit,UnitPrice)
VALUES(78,"guitar",30,7,"4kg package","450.50");

-- 3 list a;; products and their suppliers

SELECT p.*, s.CompanyName -- select both tables with aliases
FROM products p -- define p alias
INNER JOIN suppliers s ON p.SupplierID = s.SupplierID -- join tables and relate where supplier id(in products table) matches with suppler id (in suppliers table)
ORDER BY p.ProductID;

-- 4 Raise the price of your new product 15%

UPDATE products 
SET UnitPrice = "518.10"
WHERE ProductID = 78;

-- 5 list the products and prices of all products from that supplier

SELECT p.* 
FROM products p
WHERE p.supplierID = 30;

-- 6. delete the new product

DELETE FROM products 
WHERE productID = 78;

-- 7 delete new supplier

DELETE FROM suppliers 
WHERE SupplierID = 30;

-- 8 list all products

SELECT p.* 
FROM products p;


-- 9. List all suppliers

SELECT s.*
FROM suppliers s;


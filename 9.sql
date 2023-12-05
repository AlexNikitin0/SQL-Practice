USE northwind;
-- 9. List the product id, product name, and inventory value (calculated by unit price * unitsOnHand) sort the results in descending order by value.
SELECT productID , productName , Unitprice * unitsInStock AS value

FROM products 
ORDER BY value DESC;
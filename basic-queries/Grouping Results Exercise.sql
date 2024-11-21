use northwind;

-- 1. 
SELECT COUNT(CompanyName)
FROM suppliers;

-- 2. 
SELECT ROUND(SUM(SALARY), 2) AS SalaryTotalOfAllemployees
FROM employees;

-- 3.
SELECT MIN(UnitPrice)
FROM products;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (
	SELECT min(UnitPrice) 
    FROM Products);

-- 4. 
SELECT avg(UnitPrice)
FROM products;

-- 5. 
SELECT MAX(UnitPrice)
FROM products;

SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice = (
	SELECT MAX(UnitPrice)
    FROM products);

-- 6. 
SELECT SupplierID, 
COUNT(ProductName) as NumberOfProducts
FROM products
GROUP BY SupplierID;

-- 7. 
SELECT CategoryID, 
avg(UnitPrice) as AvgPriceOfProducts
FROM products
GROUP BY CategoryID;

-- 8. 
SELECT SupplierID, 
COUNT(ProductName) as NumberOfProducts
FROM products
GROUP BY SupplierID
HAVING NumberOfProducts >= 5;

-- 9. 
SELECT ProductID,
ProductName,
(UnitPrice * UnitsInStock) as InventoryValue
FROM products
ORDER BY InventoryValue DESC, ProductName;





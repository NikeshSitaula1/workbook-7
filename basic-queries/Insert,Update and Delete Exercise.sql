-- 1.
insert into suppliers(CompanyName, ContactName, ContactTitle, Address, City, Region, Postalcode, Country, Phone, Fax, Homepage)
values ("Yearup", "Lourdiana Joseph", "Marketing Manager", "9-8 Sekimai Musashino-shi", "Tokyo", NULL, "100", "Japan", "(03) 3555-5011", NULL, NULL);

-- 2.
INSERT INTO products(ProductName, SupplierID)
values ("Coffee", 30);

update products
set products.UnitPrice = 10
where products.ProductName = "coffee";

-- 3.
select products.ProductID, products.ProductName, products.SupplierID,
suppliers.CompanyName
from products
join suppliers on suppliers.SupplierID = products.SupplierID
order by products.ProductID;

-- 4. 
update  products
set products.unitPrice = ((products.UnitPrice * 0.15) + products.UnitPrice)
where products.ProductName = "coffee";

-- 5.
SELECT
products.ProductID, products.ProductName, products.UnitPrice,
suppliers.CompanyName
from suppliers
join products on products.SupplierID = suppliers.SupplierID
where suppliers.CompanyName = "Yearup";

-- 6.
delete from products
where products.ProductName = "Coffee";

-- 7.
delete from suppliers
where suppliers.CompanyName = "Yearup";

-- 8.
select * 
from products;

-- 9.
select *
from suppliers;

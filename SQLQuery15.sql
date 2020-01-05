--1
SELECT TOP 10 productname, unitprice
FROM Production.Products
ORDER BY unitprice DESC

--2
SELECT *
FROM Production.Products
WHERE categoryid != 1
ORDER BY productname
OFFSET 50 ROWS
FETCH NEXT 10 ROWS ONLY

--3
SELECT TOP 5 *
FROM Sales.Orders
where DAY(shippeddate)<16 AND empid=4
Order by orderdate DESC

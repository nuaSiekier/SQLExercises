--1 pracuja dluzej niz 100 dni
SELECT city, hiredate,
DATEDIFF(DAY,hiredate,GETDATE())
FROM
HR.Employees
WHERE DATEDIFF(DAY,hiredate,GETDATE()) >5555


--2 urodzeni miedzy 1970-1975
SELECT birthdate, 
DATEPART(YEAR, birthdate)
FROM HR.Employees
WHERE DATEPART(YEAR, birthdate)
 BETWEEN 1970 AND 1975

 --3
 SELECT *,
 DATEDIFF (DAY, orderdate, shippeddate) as shiptime
 FROM Sales.Orders
 WHERE DATEDIFF (DAY, orderdate, shippeddate) < 10

 --4
 SELECT *,
DATEPART(dayofyear, orderdate) as daysfromorder
 FROM Sales.Orders
 WHERE DATEPART(dayofyear, orderdate) = DATEPART(dayofyear, getdate())
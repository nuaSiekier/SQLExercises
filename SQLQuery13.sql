--1
SELECT categoryname
FROM Production.Categories 
where categoryname like 'c%' or categoryname like '%s'

--2
SELECT *, REPLACE(description, 'ess', 'xyz') as podmienione
FROM Production.Categories

--3
SELEct UPPER('city: '+city+' country: '+country) as adress
FROM HR.Employees
--mozna uzyc concat

--4
SELECT *, LEFT(firstname,1)+Left(lastname,1) as Inicialy
FROM HR.Employees



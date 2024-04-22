USE w3schools;

SELECT *
FROM Products
ORDER BY ProductID;

#ASC : 올림 차순
SELECT *
FROM Products
ORDER BY Price ASC;

#DESC : 내림 차순
SELECT *
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Products
ORDER BY CategoryID, Price DESC ;

SELECT ProductName, CategoryID, Price, Unit
FROM Products
ORDER BY 2, 3;

SELECT *
FROM Employees
ORDER BY BirthDate;

SELECT *
FROM Customers
ORDER BY Country, City;

SELECT *
FROM Suppliers
ORDER BY City;

SELECT *
FROM Employees
ORDER BY FirstName DESC;

SELECT *
FROM Orders
WHERE NOT OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT *
FROM Suppliers
WHERE NOT Country IN ('UK', 'USA');

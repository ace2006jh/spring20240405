USE w3schools;

SELECT *
FROM Customers
LIMIT 5;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate DESC
LIMIT 2;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY Price
LIMIT 3;


SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 1;

SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1;

SELECT *
FROM Products
WHERE CategoryID IN(3) ORDER BY Price DESC
LIMIT 2;

#paging
#1 page
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 0, 10;

#2 page
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 10, 10;

#3 page
SELECT CustomerID, CustomerName
FROM Customers
ORDER BY CustomerID
LIMIT 20, 10;

#n page : LIMIT (n-1)*한페이지의 게시물 수, 한페이지의 게시물 수



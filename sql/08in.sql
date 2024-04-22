USE w3schools;

SELECT *
FROM Customers
WHERE Country = 'Germany'
OR Country ='UK';

SELECT *
FROM Customers
WHERE Country IN ('germany', 'uk');

SELECT *
FROM Products
WHERE CategoryID IN ('2', '3', '6');

SELECT *
FROM Suppliers
WHERE Country IN ('japan', 'brazil', 'italy');
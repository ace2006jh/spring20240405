USE w3schools;
SELECT CustomerName, City
FROM Customers;
SELECT Country
FROM Customers;

SELECT DISTINCT Country
FROM Customers;

SELECT City, Country
FROM Customers;

SELECT DISTINCT City, Country
FROM Customers;

SELECT Count(City) FROM Customers;

SELECT COUNT(DISTINCT City)
FROM Customers;
SELECT COUNT(DISTINCT Country)
FROM Customers;

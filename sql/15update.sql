USE w3schools;

SELECT *
FROM Customers;

UPDATE Customers
SET CustomerName = 'IRON MAN'
WHERE CustomerID = 10;

UPDATE Customers
SET ContactName = 'TONY STARK'
WHERE CustomerID = 10;

UPDATE Customers
SET Address = 'STARK TOWER',
    City = '맨하탄',
    PostalCode = '12345'
WHERE CustomerID = 10;


SELECT *
FROM Customers
WHERE Country = '영국';

UPDATE
Customers
SET Country = '영국';


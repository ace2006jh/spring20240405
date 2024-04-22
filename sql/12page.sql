USE w3schools;

INSERT INTO Employees
(LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT COUNT(*)
FROM Employees;

SELECT EmployeeID
FROM Employees
LIMIT 368;

DELETE
FROM Employees
WHERE EmployeeID > 580;

SELECT *
FROM Employees
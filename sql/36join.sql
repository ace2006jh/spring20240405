USE w3schools;

SELECT *
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE p.ProductID = 1;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p
         JOIN Suppliers s
              ON p.SupplierID = s.SupplierID
WHERE p.ProductID = 10;

SELECT *
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE o.OrderID = 10249;

SELECT e.FirstName, e.LastName
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID = 10249;

SELECT s.ShipperName
FROM Orders o
         JOIN Shippers s
              ON o.ShipperID = s.ShipperID
WHERE o.OrderID = 10249;

SELECT c.CustomerName, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID = 90
ORDER BY o.OrderDate;

SELECT o.OrderDate, e.LastName, e.FirstName
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY o.OrderDate;
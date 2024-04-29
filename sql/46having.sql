USE w3schools;

# HAVING : 집계함수의 조건절
SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품수가 10개 이상인 카테고리
SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

SELECT Country, COUNT(CustomerID) 명수
FROM Customers
GROUP BY Country
HAVING 명수 >= 5;

SELECT LastName, FirstName, SUM(Quantity * Price) 매출액
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY LastName
HAVING 매출액 >= 10000;

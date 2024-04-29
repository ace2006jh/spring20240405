#GROUP BY : 집계함수(avg, sum, count, min, max)를 그룹별로 결과 내게 함

USE w3schools;
SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID,
       (SELECT c.CategoryName
        FROM Categories c
        WHERE c.CategoryID = p.CategoryID),
       COUNT(ProductID)
FROM Products p
GROUP BY CategoryID;

SELECT *
FROM Categories c
         JOIN Products p
              ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID;

SELECT e.EmployeeID, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) 매출액
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID
ORDER BY 매출액 DESC;

SELECT c.CustomerName, SUM(od.Quantity * p.Price) 소비금액
FROM Orders o
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Customers c ON p.CategoryID = c.CustomerID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY o.CustomerID
ORDER BY 소비금액 DESC;


SELECT Country,
       City,
       COUNT(CustomerID)
FROM Customers
GROUP BY Country, City;

# 고객별, 상품별 주문량

SELECT c.CustomerId  고객번호,
       c.CustomerName,
       p.ProductID,
       p.ProductName,
       SUM(Quantity) 상품주문수
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
GROUP BY o.CustomerID, p.ProductID
ORDER BY 고객번호, 상품주문수 DESC;

# 국가별, 상품별 주문수량 조회 (국가(asc), 상품판매수(desc) 순 정렬)

SELECT c.Country,
       ProductName,
       SUM(Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY c.Country, p.ProductID
ORDER BY c.Country, 수량 DESC;

# 상품별, 국가별 주문수량
SELECT ProductName,
       c.Country,
       SUM(Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY p.ProductID, c.Country
ORDER BY p.ProductId, 수량 DESC;


USE w3schools;


# 1번 카테고리 상품의 평균 가격은?
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;
# 1번 상품의 총 판매 갯수는?
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductID = 1;

# 2번 상품의 1997년 중 총 판매 갯수는?
SELECT SUM(od.Quantity)
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
WHERE od.ProductID = 2
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

# 1번 고객이 1997년 중에 총 소비한 금액은?
SELECT SUM(p.Price * od.Quantity)
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE o.CustomerID = 1
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT SUM(p.Price * od.Quantity)
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
ON o.OrderID = od.OrderID
    JOIN Products p
    ON p.ProductID = od.ProductID
WHERE c.Country = 'mexico'
AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';
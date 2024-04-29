USE mydb2;
SELECT *
FROM product;
SELECT *
FROM category;

# 상품이 존재하지 않는 카테고리
SELECT *
FROM category c
         LEFT JOIN product p
                   ON c.id = p.category_id
WHERE p.id IS NULL;

USE w3schools;

SELECT *
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31' IS NULL
;

DELETE FROM Orders WHERE OrderDate >= '1997-01-01';

INSERT INTO Employees
(LastName, FirstName)
VALUES ('흥민', '손'),
       ('강인', '이');
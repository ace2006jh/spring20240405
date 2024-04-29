USE mydb2;


CREATE TABLE product
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(10) NOT NULL,
    price       INT         NOT NULL DEFAULT 0,
    category_id INT REFERENCES category (id)
);
CREATE TABLE category
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL
);

INSERT INTO category (name)
VALUES ('초콜렛'),
       ('탄산음료'),
       ('과자'),
       ('유제품'),
       ('생필품');
DELETE
FROM product;

INSERT INTO product (name, price, category_id)
VALUES ('가나', 500, 1),
       ('페레로로쉐', 700, 1),
       ('크런키', 400, 1),
       ('콜라', 300, 2),
       ('사이다', 300, 2),
       ('포카칩', 600, 3),
       ('새우깡', 550, 3);


SELECT *
FROM product
         JOIN category;

SELECT *
FROM product
         JOIN category ON category_id = category.id;

SELECT *
FROM product AS p
         JOIN category AS c ON category_id = c.id;

SELECT p.name, c.name, p.price
FROM product AS p
         JOIN category AS c ON category_id = c.id;

SELECT p.name, c.name, p.price
FROM product p
         JOIN category c ON category_id = c.id;
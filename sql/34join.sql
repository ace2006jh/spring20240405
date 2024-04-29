USE mydb2;
CREATE TABLE table5
(
    col1 INT,
    col2 VARCHAR(3)
);
CREATE TABLE table6
(
    col_a INT,
    col_b VARCHAR(3),
    col_c VARCHAR(3)
);

INSERT INTO table5
VALUES (1, 'abc'),
       (2, 'def'),
       (3, 'ghi');

INSERT INTO table6
VALUES (2, 'jhk', 'mno'),
       (3, 'pqr', 'stu'),
       (4, 'vwx', 'yza'),
       (5, 'bcd', 'efg');

SELECT *
FROM table5
         JOIN table6;

SELECT *
FROM table5
         JOIN table6 ON col1 = col_a;
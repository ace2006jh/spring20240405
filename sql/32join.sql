

USE mydb2;


CREATE TABLE table1
(
    col_a INT
);
CREATE TABLE table2
(
    col_b INT
);

INSERT INTO table1
(col_a)
    VALUES (1),
        (2),
        (3),
        (4);

INSERT INTO table2
(col_b)
VALUES (2),
       (2),
       (3),
       (4),
       (5);

SELECT * FROM table1;

SELECT * FROM table2;

SELECT *
FROM table1 JOIN table2
ORDER BY col_a, col_b;

SELECT *
FROM table1 JOIN table2 ON col_a = col_b;

SELECT *
FROM table1 JOIN table2 WHERE col_a = col_b;

CREATE TABLE table3
(
    col_a INT
);

CREATE TABLE table4
(
    col_b INT
);

INSERT INTO table3
(col_a) VALUES (5), (6), (7);

INSERT INTO table4
(col_b) VALUES (7), (6), (7), (8);

SELECT *
FROM table3 JOIN table4
ORDER BY col_a, col_b;




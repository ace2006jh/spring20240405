USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
CREATE TABLE my_table15 (
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);

INSERT INTO my_table15
(col1, col2) VALUES  ('def', 'def');

SELECT *
FROM my_table15;

CREATE TABLE my_table16 (
                            col1 VARCHAR(3),
                            col2 VARCHAR(3) UNIQUE,
                            col3 VARCHAR(23) NOT NULL UNIQUE
);
USE w3schools;

# 문자열
# VARCHAR(길이)
CREATE TABLE my_table3(
    name VARCHAR(3),
    title VARCHAR(5),
    notes VARCHAR(1000)
);
DESC my_table3;
INSERT INTO my_table3
(name, title, notes)
VALUES ('이강인', '축구선수', '파리생제르망');

INSERT INTO my_table3
(name, title, notes)
VALUES ('네이마르', '야구선수', '사우디아라비아');

CREATE TABLE my_table4(
    name     VARCHAR(25),
    contents VARCHAR(1500),
    author   VARCHAR(20)
);
INSERT INTO my_table4
    (name, contents, author)
VALUES ('폰더씨의 위대한 하루', '폰더씨가 위인들을 만나는 이야기', '앤디 앤드루스');

SELECT *
FROM my_table4;
# 수
# 정수 INT
# 실수 DECIMAL, DEC(촐길이, 소수점이하길이)
CREATE TABLE my_table5 (
    age INT,
    height DEC(5, 2)
);
DESC my_table5;

INSERT INTO my_table5 (age, height) VALUES (10, 170.25);
SELECT *
FROM my_table5;

CREATE TABLE my_table6 (
    skt DEC(4, 2),
    geng int

);

INSERT INTO my_table6 (skt, geng) VALUES (15.57, 88488);
SELECT *
FROM my_table6;

# 날짜시간
# DATE ; 날짜 (YYYY-MM-DD)
# DATETIME ; 날짜시간 (YYYY-MM-DD HH:MM:SS)

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);
DESC my_table7;
SELECT *
FROM my_table7;
INSERT INTO my_table7
(col1, col2)
VALUES ('2002-08-10', '1999-09-09 22:10:10');

CREATE TABLE my_table9 (
                           string_col    VARCHAR(30),
                           int_col       INT,
                           dec_col       DEC(10, 2),
                           date_col      DATE,
                           date_time_col DATETIME
);
INSERT INTO my_table9 (string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('배고픔', 1557, 04.25, '1996.09.20', '1555.12.11 16:52:22');
SELECT *
FROM my_table9;

CREATE TABLE my_table10 (
    title VARCHAR(30),
    name VARCHAR(30),
    age INT,
    price DEC(10, 3),
    published DATE,
    inserted DATETIME
);

INSERT INTO my_table10 (title, name, age, price, published, inserted) VALUES ('이것이 자바다', '신용권', 30, 23422.223, '1999-09-09', '1999-10-10 12:33:12'),
('스프링부트', '홍길동', 50, 2342.123, '2024-01-01', '2024-02-02 09:33:33');



--1
SELECT color, mark, count(1)
FROM auto 
WHERE mark IN ('BMW','LADA') 
GROUP BY color, mark;

--2

SELECT DISTINCT mark, (select count(1) 
FROM auto a1 
WHERE a1.mark != a.mark) AS c 
FROM auto a;

--3 

CREATE TABLE test_a (
    id INT, 
    test VARCHAR(10)
);

CREATE TABLE test_b (id INT);

INSERT INTO test_a(id, test) VALUES
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');

INSERT INTO test_b(id) VALUES
(10),
(30),
(50);

SELECT *
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;

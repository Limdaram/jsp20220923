-- DELETE : 테이블의 레코드 삭제
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- 고객테이블에서 90번 고객 삭제
DELETE FROM Customers WHERE CustomerID=90;
SELECT * FROM Customers WHERE CustomerID=90;

-- USA 고객들 지우기
DELETE FROM Customers WHERE Country='USA';
SELECT * FROM Customers WHERE Country='USA';

-- UK 고객들 지우기
DELETE FROM Customers WHERE Country = 'UK';
SELECT * FROM Customers WHERE Country = 'UK';

SELECT * FROM Customers;
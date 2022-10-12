-- database 선택
USE w3schools;

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';

-- AND
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customers WHERE CustomerName >= 'a' AND CustomerName < 'b'; -- 이름이 a로 시작하는 사람만
SELECT * FROM Customers WHERE CustomerName >= 'c' AND CustomerName < 'd'; -- 이름이 c로 시작하는 사람만

-- 고객테이블에서 ContactName이 'e'로 시작하는 고객들 조회
SELECT * FROM Customers WHERE (ContactName >= 'e') AND (ContactName <'f');

-- 상품테이블에서 가격이 10.00 이상 20.00 미만인 상품들
SELECT * FROM Products WHERE (Price >= 10.00) AND (Price < 20.00); 

-- 직원테이블에서 생일이 1950년대생만 조회
SELECT * FROM Employees WHERE (BirthDate >= '1950-01-01') AND (BirthDate <= '1959-12-31');


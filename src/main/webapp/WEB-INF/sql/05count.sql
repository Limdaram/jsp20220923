-- COUNT() 함수 : 레코드가 몇개 인지?
SELECT * FROM Customers; 
SELECT COUNT(*) FROM Customers; -- 91
SELECT COUNT(Country) FROM Customers; -- 91
SELECT COUNT(DISTINCT Country) FROM Customers; -- 21

-- Employees 테이블의 레코드가 몇 개인지?
SELECT COUNT(*) FROM Employees; -- 9
-- Suppliers 테이블의 Country 값이 중복 제거 하고 몇 개인지?
SELECT COUNT(DISTINCT Country) FROM Suppliers; -- 16
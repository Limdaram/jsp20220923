-- not equals : <>, != 같지 않다
SELECT * FROM Customers WHERE Country <> 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country <> 'Germany'; -- 80

SELECT * FROM Customers WHERE Country != 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country != 'Germany'; -- 80

-- Suppliers 테이블에서 국가가 Japan이 아닌 공급자들 조회
SELECT * FROM Suppliers WHERE Country != 'Japan'; -- 27
SELECT * FROM Suppliers WHERE Country <> 'Japan'; -- 27

SELECT * FROM Employees WHERE EmployeeID <> 1;
-- ORDER BY : 조회된 레코드 (행, raw) 정렬

SELECT * FROM Customers;
SELECT * FROM Customers ORDER BY CustomerID;
SELECT * FROM Customers ORDER BY CustomerName;
SELECT * FROM Customers ORDER BY Country;

SELECT * FROM Customers ORDER BY Country, City; -- country로 나열 후 그 안에서 city로 나열

-- ASC : 오름차순
-- DESC : 내림차순

SELECT * FROM Customers ORDER BY Country ASC; -- ASC가 기본값
SELECT * FROM Customers ORDER BY Country DESC;


SELECT * FROM Customers ORDER BY Country ASC, City DESC; -- Contry는 오름차순, City는 내림차순
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City DESC;

-- 컬럼명 대신 컬럼 번호로 작성 가능
SELECT * FROM Customers ORDER BY CustomerName;
SELECT * FROM Customers ORDER BY 2;

SELECT CustomerName, City FROM Customers;
SELECT CustomerName, City FROM Customers ORDER BY CustomerName;
SELECT CustomerName, City FROM Customers ORDER BY 1;
SELECT City, CustomerName FROM Customers ORDER BY 2;
SELECT CustomerName, City FROM Customers ORDER BY 2, 1;

-- 직원 생일 순으로 직원 조회
SELECT * FROM Employees ORDER BY BirthDate;

-- 상품명순으로 상품 조회
SELECT * FROM Products ORDER BY ProductName;

-- 가격이 높은 것부터 낮은 것순으로 상품 조회
SELECT * FROM Products ORDER BY Price DESC;

-- 공급자를 나라, 도시순으로 조회
SELECT * FROM Suppliers ORDER BY Country, City;

-- 1번 카테고리에 있는 상품들을 조회 (가격 내림차순으로)
SELECT ProductName, Price FROM Products WHERE CategoryID = 1 ORDER BY Price DESC; 

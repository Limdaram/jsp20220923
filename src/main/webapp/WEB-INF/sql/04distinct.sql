-- distinct : 중복제거
SELECT * FROM Customers;
SELECT Country FROM Customers; -- 91
SELECT DISTINCT Country FROM Customers; -- 21
SELECT City, Country FROM Customers; 
SELECT DISTINCT City, Country FROM Customers; -- 69

-- Suppliers 테이블의 Country 컬럼을 중복 제거해서 조회
-- Suppliers 테이블의 Country 컬럼을 중복 제거하지 않고 조회

SELECT DISTINCT Country FROM Suppliers; -- 16
SELECT Country FROM Suppliers; -- 29



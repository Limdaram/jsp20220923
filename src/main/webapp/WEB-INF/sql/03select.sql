-- SELECT : 데이터를 얻는 명령문
/*
SELECT 컬럼명리스트 FROM 테이블명;
*/

-- Customers 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName 열 조회
SELECT CustomerName FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName, Address 열 조회
SELECT CustomerName, Address FROM Customers;
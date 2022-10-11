-- Customers 테이블 조회
SELECT * FROM Customers; -- 현재 명령문 실행

-- Employees 테이블 조회
SELECT * FROM Employees; -- SQL (Structured Query Language)

-- Employees 테이블의 모든 레코드(행)을 LastName, BirthDate 열 조회
SELECT LastName, BirthDate FROM Employees;

-- SQL 작성 시 주의할 점
-- 대소분자를 구별하지 않는다
-- 데이터베이스 종류에 따라 구분할 수도 있다
-- 키워드는 대문자 (SELECT, FROM)
-- 그 외는 소문자 or CamelCase
SELECT LastName, BirthDate FROM Employees; -- 권장
select lastname, birthdate from Employees;
select lastname, birthdate from employees; -- 안됨 (케이블명은 대소문자 구분 함)

-- 모든 컬럼 : *
SELECT * FROM Customers;
SELECT CustomerID, CustomerName, Address, City, PostalCode, Country
FROM Customers; 

-- Employess 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Employees;

-- SELECT 이후의 컬럼의 순서가 결과의 순서가 된다
SELECT CustomerName, Address FROM Customers;
SELECT Address, CUstomerName FROM Customers;

 -- Employees 테이블의 모든 레코드를 FirstName, LastName, BirthDate 컬럼으로 조회하기
 SELECT FirstName, LastName, BirthDate FROM Employees;
 
 SELECT LastName, FirstName, BirthDate FROM Employees;
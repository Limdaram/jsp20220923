-- WHERE 연산자 = : 값이 같다

SELECT * FROM Customers WHERE Country = 'UK';
SELECT * FROM Customers WHERE Country = "UK"; -- 문자열은 작은 따옴표 또는 큰 따옴표 사용
-- 작은 따옴표 표현은 작은 따옴표 사용 또는 역슬래시(\)
SELECT * FROM Customers WHERE CustomerName = 'B''s Beverages';
SELECT * FROM Customers WHERE CustomerName = 'B\'s Beverages';

-- 문자열은 대소문자를 구분하지 않는다
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE Country = 'mexico';
SELECT * FROM Customers WHERE Country = 'MEXICO';

-- 회사 설정에 따라 달라질 수 있다

-- 수(Number 형식) 비교 : 따옴표 생략이 가능하다 (숫자이기 때문에 가능한 안쓰는걸로)
SELECT * FROM Customers WHERE CustomerID = '3';
SELECT * FROM Customers WHERE CustomerID = 3;

-- Suppliers 테이블에서 SupplierID가 5번인 레코드 조회
SELECT * FROM Suppliers WHERE SupplierID = 5;

-- Employees 테이블에서 FirstName이 Nancy인 직원 조회
SELECT * FROM Employees WHERE FirstName = 'Nancy';

-- Employees 테이블에서 FirstName이 Janet인 직원의 생일 조회
SELECT BirthDate FROM Employees WHERE FirstName = 'Janet';
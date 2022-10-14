-- UPDATE 레코드(row)의 필드(column)들을 수정

UPDATE Customers SET ContactName = 'Alfred Schmit' WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1; 

UPDATE Customers 
SET ContactName = 'Maria Schmit', City = 'Frankfurt' 
WHERE CustomerID = 1;

SELECT * FROM Customers ORDER BY 1 DESC;
-- 92번, 93번 고객의 고객명, 계약자명, 주소, 도시, 우편번호, 국가 모두 수정하는 쿼리 작성/실행
UPDATE Customers 
SET CustomerName='Limdaram', ContactName='daram', Address='ganganam', City='seoul', PostalCode='119', Country='USA'
WHERE CustomerID = 92;

UPDATE Customers
SET CustomerName='LDR', ContactName='DR', Address='HH', City='London', PostalCode='911', Country='UK'
WHERE CustomerID = 93;
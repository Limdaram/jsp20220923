SELECT * FROM Customers ORDER BY CustomerID DESC;
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, Country)
VALUES
(92, 'Limchaeeun', 'Limdaram', 'choongang', 'seoul', 'korea');

INSERT INTO Customers
(CustomerName, ContactName)
VALUES
('LCE', 'LD');

DESC Customers; -- DESCRIBE : 테이블 구조 조회, 제약사항(Constraints) 조회

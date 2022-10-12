-- NOT : false -> true, true -> false

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Germany';
SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- usa 에 살지 않는 고객들
SELECT * FROM Customers WHERE NOT Country = 'USA';

-- usa 에 있지 않는 공급자들
SELECT * FROM Suppliers WHERE NOT Country = 'USA';

-- 주문일자가 97년도가 아닌 주문 번호들
SELECT * FROM Orders WHERE (OrderDate < '1997-01-01' OR OrderDate >= '1998-01-01');
SELECT * FROM Orders WHERE NOT ((OrderDate >='1997-01-01') AND (OrderDate < '1998-01-01'));
SELECT * FROM Orders WHERE NOT ((OrderDate >= '1997-01-01') AND (OrderDate <= '1997-12-31'));
-- INSERT INTO : 테이블에 레코드 추가하는 명령문

SELECT * FROM Employees;
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'daram', 'lim', '1997-08-21', 'EmpID10.pic', 'squirrel');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11, 'chaeeun', 'lim', '2019-06-14', 'EmpID11.pic', 'woman');

-- notes 컬럼 빼고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12, 'CE', 'L', '2022-10-13', 'EmpID12.pic');

-- BirthDate, notes 빼고 
INSERT INTO Employees
(EmployeeID, LastName, FirstName, Photo)
VALUES
(13, 'ChaeEun', 'Lim', 'EmpID13.pic');

-- EmployeeID 빼고
INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('CHAEEUN', 'LIM', '');

-- NULL은 값이 없음
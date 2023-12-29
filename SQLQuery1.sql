CREATE DATABASE EmployeeDB;
GO

USE EmployeeDB;
GO

DROP TABLE Department;

CREATE TABLE Department (
	DepartID INT PRIMARY KEY,
	DepartName VARCHAR(50) NOT NULL,
	Description VARCHAR(100) NOT NULL
);

INSERT INTO Department VALUES
	(1, 'IT', 'Công Nghệ Thông Tin'),
	(2, 'Labor', 'Lao Công'),
	(3, 'Accountant', 'Kế Toán');

DROP TABLE Employee;

CREATE TABLE Employee (
	EmpCode CHAR(6) PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Birthday SMALLDATETIME NOT NULL,
	Gender BIT DEFAULT 1,
	Address VARCHAR(100),
	DepartID INT,
	Salary MONEY,
	FOREIGN KEY (DepartID) REFERENCES Department(DepartID)
);

INSERT INTO Employee VALUES
	(01, 'Đức', 'Anh', '2005-11-15', 0, 'Đông Anh Hà Nội', 1, 50000.00),
	(02, 'Phạm', 'Dũng', '2005-10-24', 0, 'Thanh Trì Hà Nội', 2, 50000.00),
	(03, 'đăng', 'quỳnh ', '2005-10-03', 0, 'Đông Anh Hà Nội', 3, 50000.00);

UPDATE Employee SET Salary = Salary * 1.1;
GO

ALTER TABLE Employee
ADD CONSTRAINT CHK_Salary CHECK (Salary > 0);
GO

SELECT * FROM Department;
SELECT * FROM Employee;
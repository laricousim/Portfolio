--select methods = *, TOP, WHERE, AND, =,>,<, >=, <=, OR, ISNULL

--select TOP 6 LastName, Age, Gender FROM Employee WHERE Age > 25

--select * from EmployeeSalary where Salary>= 50000

--select * from Employee where Gender = 'Female' AND Age > 20

--select * from Employee where Gender = 'Female' OR Age > 24

--select max(Salary) as maxsalary from EmployeeSalary

--select min(Salary) as minsalary from EmployeeSalary

--select distinct(Gender) from Employee

--select COUNT(LastName) as LastNameCount from Employee where Age>30

--select *from Employee where Age > 25

--select * from Employee where FirstName like '%b%a%'

--select Gender, COUNT(gender) as GenderCount from Employee group by Gender

--select gender, MAX(age), COUNT(gender) from Employee group by Gender


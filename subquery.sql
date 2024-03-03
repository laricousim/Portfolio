--Subqueries

--Filtering data
select * from Employee where EmployeeID = (select EmployeeID from EmployeeSalary where EmployeeID = 1003)


--Checking Existence
select EmployeeID, FirstName, LastName from Employee where exists (select * from EmployeeSalary 
where Employee.EmployeeID = EmployeeSalary.EmployeeID)

--Subquery in FROM clause
select AVG (salary) as avg_salary
from (select salary from EmployeeSalary where EmployeeID > 1003) as job_salaries

--Subquery in Insert Statement
create table high_earnest (EmployeeID int, JobTitle varchar(50), salary int)


insert into high_earnest
select EmployeeID, JobTitle, Salary from 
EmployeeSalary where Salary > (Select AVG(salary) from EmployeeSalary);


--Subquery in Update Statement
update EmployeeSalary
set Salary = Salary + (Salary * 0.10)
where EmployeeID in (Select EmployeeID from EmployeeSalary where Salary < 100000)

select * from EmployeeSalary

--Subquery with Aggregation
select EmployeeID, AVG(Salary) as avg_salary
from EmployeeSalary
Group by EmployeeID
Having AVG(Salary) > (Select AVG(Salary) from EmployeeSalary)



select * from high_earnest


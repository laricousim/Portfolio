use [sql intro]
--Temp Table

Create Table #temp_employee
(EmployeeId int,
JobTitle varchar(50),
Salary int)

Insert into #temp_employee values
(1043, 'HR', 250000),
(1044, 'Bursar', 1000000)

select * from #temp_employee

select * from EmployeeSalary

Insert into #temp_employee
select * from EmployeeSalary

Create table #Temp_employee2
(Jobtitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

insert into #Temp_employee2
select sms.JobTitle, COUNT(sms.JobTitle), AVG(em.Age), AVG(sms.Salary)
from Employee as em Inner Join EmployeeSalary as sms
on em.EmployeeID = sms.EmployeeID
group by sms.JobTitle

select * from #Temp_employee2

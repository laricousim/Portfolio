SELECT TOP (1000) [EmployeeID]
      ,[JobTitle]
      ,[Salary]
  FROM [sql intro].[dbo].[EmployeeSalary]


  select *,
  CASE
    WHEN JobTitle = 'HR' THEN Salary + (Salary*0.20)
	WHEN JobTitle = 'Frontend Developer' THEN Salary + (Salary*0.30)
	WHEN JobTitle = 'Cleaner' THEN Salary + (Salary*0.40)
	ELSE Salary + (Salary*0.15)
  END AS SalaryRaise
  from EmployeeSalary


  
select Gender, COUNT(Age) from Employee
Group by Gender
Having COUNT(Age) > 1


  select *from EmployeeSalary

  --Partition By

  select Gender, AVG(Age) from Employee where EmployeeID IS NOT NULL AND Age is NOT NULL group by GENDER

  select Gender, FirstName, AVG(Age) OVER (Partition by Gender) as AverageAge from Employee where EmployeeID IS NOT NULL AND Age is NOT NULL

--aliasing AS


select e.EmployeeID, e.FirstName, e.Gender from Employee as e where e.EmployeeID is not null and e.FirstName is not null

select EmployeeID as ID, FirstName, Gender from Employee where EmployeeID is not null

select em.EmployeeID, em.LastName, em.Age, salary.JobTitle, salary.Salary from Employee as em INNER JOIN EmployeeSalary as salary on em.EmployeeID = salary.EmployeeID


--common table expression

with B_Employee as (select * from Employee where LastName like 'B%')
select Avg(Age) numberofUserB from B_Employee




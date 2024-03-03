--use [sql intro]
-- create procedure ProcedureName
CREATE PROCEDURE GetAvgSalary
As 
Begin
   Select AVG(salary) from EmployeeSalary
end;
EXEC GetAvgSalary


create procedure getEmployeeByAge
@Age INT
As 
Begin 
     select * from Employee where Age = @Age
end;


exec getEmployeeByAge @Age = 48;



create procedure getEmployeeCountbyAge
@Age INT,
@Employee_Count int Output
As 
Begin 
     select @Employee_Count = Count(*) from Employee where Age > @Age
end;


Declare @EmployeeCount Int;

exec getEmployeeCountbyAge @Age = 30, @Employee_Count = @EmployeeCount Output;

select @EmployeeCount
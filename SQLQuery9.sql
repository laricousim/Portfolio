--create table Clientele(
--CustomerID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Location varchar(50),
--Gender varchar(50))

--drop table Clientele

--create table ClientOrder(
--CustomerID int,
--OrderType varchar(50),
--OrderID varchar(50),
--OrderDate date,
--ProductCategory varchar(50),
--ProductName varchar(50),
--Quantity int,
--UnitPrice int,
--Sales int)

--insert into Clientele values

--(131, 'Lulu', 'Rash', 23, 'Alimosho', 'female'),
--(143, 'Zaydan', 'Aboki', 29, 'Isolo', 'male'),
--(129, 'Thaabeet', 'Potash', 35, 'ikoyi', 'male')


--insert into ClientOrder values

--(131, 'online', 'OL35', '2023-12-10', 'Household', 'ice rack', 3, 705, 2150),
--(143, 'walk in', 'WN 64', '2023-12-13', 'Beverages', 'Bournvita', 1, 1560, 1560),
--(129, 'online', 'OL20', '2023-12-18', 'Frozen food', 'Sausages', 1, 1300, 1300)

--delete from ClientOrder


--insert into Clientele values
--(null, 'bayo', 'nuru', 64, 'ogun', null)

--insert into ClientOrder values
--(null, 'online', 'OL419', '2023-12-01', 'computer', null, 5, 7000, 7000*5)


--JOIN SQL
--INNER, FULL, RIGHT, LEFT

--select * from Clientele INNER JOIN ClientOrder on Clientele.CustomerID = ClientOrder.CustomerID

--select * from Clientele FULL OUTER JOIN ClientOrder on Clientele.CustomerID = ClientOrder.CustomerID

select *,
case
    when FirstName = 'Zaydan' then Age+1
	when FirstName = 'Lulu'then Age+1
	Else Age
end as NewAge
from Clientele


UPDATE Clientele
SET Age = 55
where FirstName = 'Lulu'

select * from Clientele


UPDATE Clientele
SET CustomerID = 101, Gender = 'male'
where FirstName = 'bayo'

delete from Clientele where FirstName = 'bayo' and Gender = 'male'

--Spending Of Customer

with CustomerSpending as (
select o.CustomerID ,
o.FirstName, 
SUM(c.Sales) as TotalSpend 
from Clientele o 
inner join 
ClientOrder c 
on c.CustomerID = o.CustomerID 
group by o.CustomerID, o.FirstName),
AverageSpending As (
select AVG(TotalSpend) AS AvgSpent from CustomerSpending
)
select
cs.CustomerID,
cs.FirstName,
cs.TotalSpend,
a.AvgSpent
from
   CustomerSpending as cs
 cross join
   AverageSpending as a
where cs.TotalSpend > a.AvgSpent




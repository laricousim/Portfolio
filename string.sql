-- String Function
-- Replace, Trim, LTRIM(Left trim), RTRIM(left trim), substring


select * from President

select vice, TRIM(vice) from President

select vice, LTRIM(vice) from President

select vice, RTRIM(vice) from President

Update President set vice = TRIM(vice)

--ALTER Table Pesidentdrop column[vice fixed]

Update President set prior  = REPLACE(prior, '–', '-')

select * from President


select president, UPPER(president) as Uppercase from President

select president, LOWER(president) as Uppeloerrcase from President

select president, SUBSTRING(president, 1, 5) from  President


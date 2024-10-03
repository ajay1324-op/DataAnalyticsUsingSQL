-- use project

-- 1 Show all columns and rows in the table?
select * from salaries;

-- 2 Show only the EmployeeName And JobTitle columns?
select EmployeeName,JobTitle from salaries;

-- 3 Show the number of employees in the table?
select count(*) from salaries;

-- 4 Show the unique job titles in the table?
select distinct JobTitle from salaries;

-- 5 Show the job title and overtimes pay for all employees with overtime pay greater thann 50000
select JobTitle,OvertimePay from salaries
where OvertimePay > 50000;

-- 6 Show the average base pay for all employees?
select AVG(BasePay) as "Average BasePay" from salaries;

-- 7 Show the top 10 highest paid employees?
select EmployeeName,TotalPay from salaries
order by Totalpay desc
limit 10;

-- 8 Show the average of BasePay, OvertimePay, and OtherPay for each employee?
select EmployeeName,(BasePay + OverTimePay + OtherPay)/3 as avg_of_bp_op_otherpay from salaries;

-- 9 Show all employee with a total pay between 50,000 annd 75,000?
select * from salaries
where TotalPay>=50000 and TotalPay <=75000;

-- 10 Show all employees with a base pay less than 50,000 or a total pay greater than 1,00,000?
select * from salaries
where BasePay < 50000 or TotalPay > 100000;

-- 11 Show all employees with a Total pay benefits value between  1,25,000 and 1,50,000 and a job title containing the word "Director"
select * from salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle like "%Director%";

-- 12 show all job titles with an average base pay of atleast 1,00,000 and other them by the average base pay in descending order?
select JobTitle,avg(BasePay) as "avgbasepay" from salaries
group by  JobTitle
having avg(BasePay) >= 100000
order by avgbasepay desc;
-- 13 update the base pay of all employees with the job title containing "Manager" by increasing it by 10%
set sql_safe_updates = 0;
update salaries
set BasePay = BasePay * 1.10
where JobTitle like "%Manager%";
SET sql_safe_updates = 1;
select JobTitle,BasePay from salaries; 

-- 14 Delete the column.
select * from salaries;
alter table salaries
drop column Notes;
select * from salaries;

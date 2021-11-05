-- Use Dictinct with Orderby to remove duplicate rows

------1 Retrieve the emp_no, first_name, and last_name columns from the Employees table.
select 
emp_no,
first_name,
last_name
from employees 
---2Retrieve the title, from_date, and to_date columns from the Titles table.
select 
title,
from_date,
to_date
from titles
----Create a new table using the INTO clause.
select employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
into Retirement_Titles
from employees
inner join titles
on employees .emp_no= titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY  emp_no
---7 Before you export your table, confirm that it looks like this image:
---SELECT*FROM retirement_titles
--8 Copy the query from the Employee_Challenge_starter_code.sql and add it to your 
----Employee_Database_challenge.sql file.
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;
---9 Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.9
----Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT  Distinct on (emp_no)
first_name,
last_name,
title
---11Create a Unique Titles table using the INTO clause---11.
into UniqueTitles 
FROM retirement_titles

ORDER BY emp_no
select *from public.uniquetitles

select 
count(emp_no),
title
into  Retiring_Titles
from uniquetitles
group by  title 
order by count (emp_no)desc;

select *from  retiring_titles
--SELECT country,
 COUNT(id)
FROM user
GROUP BY  country
ORDER BY COUNT(id) DESC ;
 select *from   RetiringTitles

select
title
from public.uniquetitles
g













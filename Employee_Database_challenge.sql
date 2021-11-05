-------------------1.Retrieve the emp_no, first_name, and last_name columns from the Employees table.
select 
emp_no,
first_name,
last_name
from employees 
--------------------2.Retrieve the title, from_date, and to_date columns from the Titles table.
select 
title,
from_date,
to_date
from titles
-------------------3.Create a new table using the INTO clause.
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
SELECT*FROM retirement_titles


---9 Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.9

SELECT  
emp_no,
first_name,
last_name,
title
FROM retirement_titles
------------ Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
select emp_no,
title,
from_date,
to_date
from retirement_titles

------------Employees by most recent title who are about to retire
SELECT COUNT (ut.title) AS "Count", ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY "Count" DESC;

--------------Deliverable 2: The Employees Eligible for the
-------------Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.

select  distinct 
emp_no,
first_name,
last_name,
birth_date
from employees
-----------1 Retrieve the from_date and to_date columns from the Department Employee table.
select 
from_date,
to_date
from dept_emp
-----------2Retrieve the title column from the Titles table.
select 
title
from
titles
drop table mentorship_eligibilty
select  DISTINCT ON(e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO  mentorship_eligibilty
from employees e
 LEFT join dept_emp de
on e.emp_no=de.emp_no
 LEFT join titles t
on e.emp_no=t.emp_no
WHERE  birth_date BETWEEN ' 1965-01-01'AND  '1965-12-01'
AND de.to_date='9999-01-01'
ORDER BY e.emp_no;
select *from public.mentorship_eligibilty








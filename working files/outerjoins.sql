USE employees;

SELECT * from employees where emp_no not in (SELECT emp_no from dept_manager);

SELECT * from employees as emp LEFT JOIN dept_manager as dm ON emp.emp_no = dm.emp_no ORDER BY to_date ASC;

SELECT emp.emp_no, dm.emp_no, first_name, last_name from employees as emp left join dept_manager as dm ON emp.emp_no = dm.emp_no WHERE dm.emp_no is not NULL;

-- Assignment
-- show employees without current title
-- title are in the titles table
-- current titles have a to_date equal to '9999-01-01'

-- select employees, left join with titles, where title is null
-- SELECT * FROM employees as emp LEFT JOIN titles ON emp.emp_no = titles.emp_no WHERE titles.title NOT IN ;
SELECT * FROM employees as emp LEFT JOIN titles ON emp.emp_no = titles.emp_no WHERE titles.to_date != '9999-01-01';


SELECT * from employees as emp where emp_no not in (select emp_no FROM titles where to_date = '9999-01-01');

SELECT * from
employees AS emp
JOIN
titles as t
on emp.emp_no = t.emp_no 
where emp.first_name = 'Elvis';
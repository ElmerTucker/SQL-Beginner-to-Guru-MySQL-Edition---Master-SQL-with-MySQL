use employees;
-- show department employee
-- Department Name, First Name, Last Name, and Title
-- Limit to active in department, active to title, order by department, last name
SELECT dept_name, emp.first_name, emp.last_name, title
FROM employees AS emp
INNER JOIN dept_emp AS team
ON emp.emp_no = team.emp_no
INNER JOIN departments
ON team.dept_no = departments.dept_no
INNER JOIN titles
ON emp.emp_no = titles.emp_no
WHERE team.to_date >= '9999-01-01'
AND titles.to_date >= '9999-01-01'
ORDER BY dept_name, last_name
;
use employees;
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

SELECT dept_name, first_name, last_name
FROM employees AS emp
INNER JOIN dept_manager AS man
ON emp.emp_no = man.emp_no
INNER JOIN departments
ON man.dept_no = departments.dept_no
WHERE man.to_date >= '9999-01-01'
ORDER BY dept_name, emp.last_name
;

SELECT dept_name, first_name, last_name, "Manager" as emp_type
FROM employees AS emp
INNER JOIN dept_manager AS man
ON emp.emp_no = man.emp_no
INNER JOIN departments
ON man.dept_no = departments.dept_no
WHERE man.to_date >= '9999-01-01'
UNION
SELECT dept_name, emp.first_name, emp.last_name, "Employee" as emp_type
FROM employees AS emp
INNER JOIN dept_emp AS team
ON emp.emp_no = team.emp_no
INNER JOIN departments
ON team.dept_no = departments.dept_no
WHERE team.to_date >= '9999-01-01'
ORDER BY dept_name ASC, emp_type DESC, last_name ASC;
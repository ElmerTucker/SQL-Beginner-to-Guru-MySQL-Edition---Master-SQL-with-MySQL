USE employees;

SELECT  dept_name
       ,emp.first_name
       ,emp.last_name
       ,title
FROM employees AS emp, dept_emp AS team, departments, titles
WHERE team.to_date >= '9999-01-01'
AND titles.to_date >= '9999-01-01'
AND emp.emp_no = team.emp_no
AND titles.emp_no = emp.emp_no
AND departments.dept_no = team.dept_no
ORDER BY dept_name, last_name;

-- new cartesian
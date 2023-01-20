use employees;
SELECT first_name, last_name FROM employees
INNER JOIN 
    dept_manager
    ON employees.emp_no = dept_manager.emp_no
WHERE from_date > '1990-01-01' AND to_date > '1995-01-01';

-- Want to find the name of the department manager for department 3

-- Using aliases (emp, dm, dept)
SELECT  emp.emp_no, first_name, last_name, dept.dept_name, gender
FROM employees as emp
JOIN dept_emp as team
ON emp.emp_no = team.emp_no
JOIN departments as dept
ON team.dept_no = dept.dept_no
JOIN salaries as sal
ON emp.emp_no = sal.emp_no
WHERE dept_name = 'Quality Management' AND gender = 'F'
GROUP BY emp.emp_no
ORDER BY last_name ASC;

-- some extra stuff was throwing off group by issues

-- Get a list of current managers, creating a full name alias
SELECT  dept_name
       ,CONCAT(first_name, " ", last_name) as fullName
       , gender
FROM employees AS emp
JOIN dept_manager AS dm
ON emp.emp_no = dm.emp_no
JOIN departments AS dept
ON dm.dept_no = dept.dept_no
WHERE dm.to_date >= '9999-01-01'
-- AND emp.gender = 'F' would only show ladies
ORDER BY dept_name ASC
;


USE employees;
-- Find employee 'Elmer Tuckernator' AND change his name to Sam Axe
SELECT  *
FROM employees
WHERE first_name = "Elmer"
AND last_name = "Tuckernator"; UPDATE employees

SET first_name = "Sam", last_name = "Axe", birth_date = "2000-10-31"
WHERE first_name = "Elmer"
AND last_name = "Tuckernator";

SELECT  *
FROM employees AS emp
INNER JOIN salaries
ON emp.emp_no = salaries.emp_no;

SELECT  *
FROM employees AS emp
INNER JOIN salaries
ON emp.emp_no = salaries.emp_no
WHERE first_name = "Sam";
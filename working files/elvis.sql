use employees;
-- Find Elvis' hired after 1990
select emp_no from employees WHERE first_name = 'Elvis'
AND hire_date > ('1990-01-01');


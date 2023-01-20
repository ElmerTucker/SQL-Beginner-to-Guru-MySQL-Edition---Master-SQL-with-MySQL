-- Create report showing by year: total, max, min, and average
-- exclude managers
-- managers are dfined in the table dept_manager
-- use NOT IN

use employees;

select DATE_FORMAT(from_date, '%Y') as year FROM salaries;

SELECT DISTINCT(emp_no) from dept_manager;

SELECT  DATE_FORMAT(from_date,'%Y') AS year
       ,SUM(salary)                 AS total
       ,MAX(salary)                 AS max
       ,MIN(salary)                 AS min
       ,AVG(salary)                 AS average
FROM salaries
WHERE emp_no NOT IN ( SELECT DISTINCT(emp_no) FROM dept_manager)
GROUP BY  YEAR;
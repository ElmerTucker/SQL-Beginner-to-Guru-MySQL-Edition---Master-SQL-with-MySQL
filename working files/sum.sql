use employees;

SELECT * from salaries;

-- sum is an aggregate function, so it pulls all the material here from the year it's grouped by
select date_format(from_date, '%Y') as year, sum(salary) from salaries GROUP BY year;

-- SQL MIN
select date_format(from_date, '%Y') as salary_year, min(salary) from salaries GROUP BY salary_year;


-- SQL MAX
select date_format(from_date, '%Y') as salary_year, max(salary) from salaries GROUP BY salary_year ORDER BY salary_year desc;

-- Salary range
-- defined by salary max - salary min for each year
-- using subselect 
SELECT salary_year, max_salary, min_salary, max_salary - min_salary
FROM (SELECT DATE_FORMAT(from_date, '%Y') AS salary_year,
    MAX(salary) as max_salary,
    MIN(salary) as min_salary
FROM
    salaries
GROUP BY salary_year) as sub_select ORDER BY salary_year ASC;
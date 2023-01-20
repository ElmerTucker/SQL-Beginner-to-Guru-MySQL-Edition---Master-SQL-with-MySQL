use employees;
-- Using group by
-- select first_name, count(*) from employees group by first_name;
SELECT birth_date, count(*) from employees GROUP BY birth_date;
SELECT birth_date, count(*) as birthday_friends from employees GROUP BY birth_date ORDER BY birthday_friends desc;
SELECT salary, count(*) as sal_count from salaries group by salary order by sal_count desc;

use employees;
-- create employee record
-- create title record
-- create employe department record
-- create employee salary record

INSERT INTO (employees, titles, dept_emp, salaries)
(SELECT  MAX(emp_no) +1
       ,"1984-03-24"
       ,"Elmer"
       ,"Tucker"
       ,"M"
       ,"2006-09-12"), 
       (SELECT  MAX(emp_no) +1
       ,"Grand Poobah"
       ,"2006-01-01"
       ,"9999-01-01"), 
       (SELECT  MAX(emp_no) +1
       ,"d010"
       ,"2006-01-01"
       ,"9999-01-01"), 
       (SELECT  MAX(emp_no) +1
       ,105000
       ,"2006-01-01"
       ,"9999-01-01"), 
FROM employees;

INSERT INTO employees SELECT MAX(emp_no) +1
       ,"1984-03-24"
       ,"Elmer"
       ,"Tucker"
       ,"M"
       ,"2006-09-12" FROM employees;

INSERT INTO titles SELECT emp_no where 
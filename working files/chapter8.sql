use employees;

-- INSERT INTO departments VALUES ('d011', 'Quiz Wizards');

SELECT * from employees;

-- insert INTO employees VALUES(SELECT max(emp_no), "1984-03-24", "Elmer", "Tucker", "M", "2006-09-12");
INSERT INTO employees
SELECT  MAX(emp_no) +1
       ,"1984-03-24"
       ,"Elmer"
       ,"Tucker"
       ,"M"
       ,"2006-09-12"
FROM employees;

-- select * from employees WHERE first_name = "Elmer";

INSERT INTO employees
SELECT  MAX(emp_no) +1
       ,"1984-03-24"
       ,"Elmer"
       ,"Tucker"
       ,"M"
       ,"2006-09-12"
FROM employees;
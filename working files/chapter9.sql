USE employees;

UPDATE employees SET last_name = "Tuckernator" where last_name = 'Tucker';

SELECT * from employees where first_name = 'Elmer';

SELECT * from departments;

update departments SET dept_name = "Product Engineering" WHERE dept_no = 'd010';

SELECT * from departments WHERE dept_no = 'd010';

SELECT * from departments ORDER BY dept_no asc;

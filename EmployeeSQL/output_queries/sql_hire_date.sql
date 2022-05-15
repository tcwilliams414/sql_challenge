-- List first name, last name, and hire date for employees who were hired in 1986.
Select first_name,last_name, hire_date from employees
where hire_date between '1986-01-01' AND '1986-12-31';
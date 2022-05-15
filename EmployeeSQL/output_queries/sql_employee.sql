--List the details of each employee: employee number, last name, first name, sex, and salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
join salaries
on employees.emp_no=salaries.emp_no

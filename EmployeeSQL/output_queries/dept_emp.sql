--List the department of each employee with the following information: employee number, last name, first name, 
--and department name.
SELECT employees.last_name, employees.first_name, employees.emp_no, departments.dept_name
FROM employees
JOIN dept_emp on employees.emp_no= dept_emp.empo_no
LEFT JOIN departments on departments.dept_no=dept_emp.dept_no

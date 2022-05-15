--List the manager of each department w/: department number, department name, 
--the manager's employee number, last name, first name.
SELECT dept_manager.emp_no, departments.dept_name, departments.dept_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager
ON dept_manager.dept_no=departments.dept_no
JOIN employees
ON dept_manager.emp_no= employees.emp_no;
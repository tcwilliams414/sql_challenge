-- List all employees in the Sales and Development departments, including their employee number, last name, first name, 
--and department name
Select employees.first_name, employees.last_name, employees.emp_no, departments.dept_name, dept_emp.empo_no
FROM dept_emp
JOIN employees
ON dept_emp.empo_no=employees.emp_no
JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name IN('Sales','Development');
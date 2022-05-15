-- List first name, last name, and sex for employees whose
--first name is "Hercules" and last names begin with "B."

Select employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name ='Hercules' 
AND employees.last_name LIKE 'B%'
--List the frequency count of employee last names 
--(i.e., how many employees share each last name)
--in descending order.
Select employees.last_name, count(*)
FROM employees
GROUP BY employees.last_name
ORDER BY count(*) desc
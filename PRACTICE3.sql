#Write a query to get the job ID and maximum salary of the employees
# where maximum salary is greater than or equal to $4000.

SELECT job_id, MAX(salary) 
FROM employees 
GROUP BY job_id 
HAVING MAX(salary) >=4000;

#Write a query to get the total salary, maximum, minimum, average salary
# of employees (job ID wise),
# for department ID 90 only

SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employees 
WHERE department_id = '90' 
GROUP BY job_id;

#Write a query to get the average salary for all departments employing more than 10 employees

SELECT department_id, AVG(salary), COUNT(*) 
FROM employees 
GROUP BY department_id
HAVING COUNT(*) > 10;

#Write a query to get the average salary for each job ID excluding programmer.
SELECT job_id, AVG(salary) 
FROM employees 
WHERE job_id <> 'IT_PROG' 
GROUP BY job_id;
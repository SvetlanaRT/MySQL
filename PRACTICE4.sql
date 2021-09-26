#1. Write a query to find the name (first_name, last_name) and the salary
# of the employees who have a higher salary
# than the employee whose last_name='Bull'.


SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM employees 
WHERE SALARY > 
(SELECT salary FROM employees WHERE last_name = 'Bull');

# Write a query to find the name (first_name, last_name) of all employees
# who works in the IT department
SELECT first_name, last_name 
FROM employees 
WHERE department_id 
IN (SELECT department_id FROM departments WHERE department_name='IT');


# Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments
# Use NATURAL JOIN. (NOT MANDATORY SPECIFY common COLUMN)

SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;

# Write a query to find the name (first_name, last name), 
# department ID and name of all the employees

SELECT first_name, last_name, department_id, department_name 
FROM employees 
JOIN departments USING (department_id);

#Write a query to find the name (first_name, last_name), job, department ID and name 
#of the employees who works in London

SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name 
FROM employees e 
JOIN departments d 
ON (e.department_id = d.department_id) 
JOIN locations l ON 
(d.location_id = l.location_id) 
WHERE LOWER(l.city) = 'London';

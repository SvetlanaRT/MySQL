CREATE TABLE `employees` (
`id` INT NOT NULL AUTO_INCREMENT, `first_name` VARCHAR (45) NULL, `last_name` VARCHAR(45), `salary` DECIMAL (10,00), PRIMARY KEY (`id`));

INSERT INTO employees VALUES (0, 'test','test' , 12000);

select *  from employees;
select DISTINCT last_name   from employees ;

select *  from employees ORDER BY last_name;
SELECT first_name, last_name from employees WHERE salary NOT BETWEEN 10000 AND 20000;
SELECT first_name, last_name FROM employees WHERE salary IN (20000,15000);

UPDATE employees SET salary = 15000 WHERE id = 4;
UPDATE employees SET last_name = 'goldberg' WHERE last_name  IS NULL;

DELETE FROM  employees  where id =2;

#to reset id order after deleting row
ALTER TABLE employees DROP `id`;
ALTER TABLE employees AUTO_INCREMENT=1;
ALTER TABLE employees ADD column `id` INT NOT NULL AUTO_INCREMENT  PRIMARY KEY; 
ALTER TABLE `w3resource_sveta`.`employees` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT FIRST;  #moove id to the first column
#
select *  from employees ORDER BY SALARY ASC;  #from low to hight
select *  from employees ORDER BY SALARY DESC;  #from hight to low
select COUNT(id) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT salary FROM employees   ORDER BY salary ASC LIMIT 1; #the same
SELECT MIN(salary) FROM employees WHERE last_name  IS NULL;
SELECT AVG(salary), COUNT(*) FROM employees WHERE last_name IS NULL;  #AVG and number of employees 
SELECT  last_name, COUNT(*) FROM employees GROUP BY last_name;
SELECT MAX(salary) - MIN(salary) DIFFERENCE FROM employees;

SELECT first_name,last_name, MIN(salary) FROM employees GROUP BY last_name;
SELECT COUNT(DISTINCT last_name)  FROM employees;       #different last name count
#self join
SELECT  e.first_name, e.last_name
FROM employees e
JOIN employees em
ON(em.last_name = e.last_name)
ORDER BY last_name;
# self join
SELECT e.first_name, e.last_name, e.salary, em.salary test_salary, em.last_name test_name
FROM employees e
JOIN employees em
ON (em.last_name = 'test')
WHERE e.salary < em.salary;

#update last_name 
SELECT * from employees WHERE last_name = 'fedorovsky';
SELECT * from employees WHERE last_name LIKE 'f%';
UPDATE employees SET last_name ='fedorovsky' WHERE last_name = 'fedorovcky';

UPDATE employees SET salary = 100 WHERE salary = 10;




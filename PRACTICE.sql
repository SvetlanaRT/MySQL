CREATE TABLE names (`id` INT NOT NULL , `first_name` varchar (45) NULL, `last_name` varchar (45) NULL, PRIMARY KEY (`id`));
select * from names;
INSERT INTO names VALUES (0, 'shirel', 'kalchenko');
ALTER TABLE names CHANGE COLUMN  `id`  `id` INT NOT NULL  AUTO_INCREMENT;
UPDATE  names SET first_name = 'sveta' WHERE id = 2;
UPDATE names SET last_name = 'unknown';
ALTER TABLE names CHANGE COLUMN `first_name` `F_name` varchar(45) NULL DEFAULT NULL ;
SELECT Fname  AS 'F' , Lname AS "L" from names;
SELECT first_name , last_name FROM employees WHERE 






ALTER TABLE `w3resource_sveta`.`first` change column `last_name` `Lname` varchar(45) NULL DEFAULT NULL;
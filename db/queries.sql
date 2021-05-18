-----------------------Search Employees by Roles
--Dish Washer-----
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "dish washer";
--Line Cook-------
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "line cook";
--Host------------
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "host";
--Server----------
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "server";
--Bartender-------
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "bartender";
--Manager---------
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "manger";
--General Manager-
SELECT first_name, last_name, title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "genral manager";

-----------------------Search Employees by Department
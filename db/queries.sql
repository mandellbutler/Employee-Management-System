-----------------------Search Employees by Roles
--Dish Washer-----
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "dish washer";
--Line Cook-------
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "line cook";
--Host------------
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "host";
--Server----------
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "server";
--Bartender-------
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "bartender";
--Manager---------
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "manger";
--General Manager-
SELECT first_name AS "First Name", last_name AS "Last Name", title AS Title FROM employees RIGHT JOIN roles ON employees.role_id = roles.id WHERE title = "genral manager";

-----------------------Search Employees by Department



-----------------------Search Employees by Manager
SELECT employees.first_name AS FirstName, employees.last_name AS LastName, roles.title AS Role, managers.first_name AS Manager
FROM employees RIGHT JOIN roles ON employees.role_id = role_id
JOIN employees managers ON employees.manager_id = managers.id
WHERE employees.manager_id = 2;
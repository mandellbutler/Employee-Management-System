DROP DATABASE IF EXISTS employeeManagement_db;

CREATE DATABASE employeeManagement_db;

USE employeeManagement_db;


CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

INSERT INTO department (name)
VALUES (1, "Front of House");

INSERT INTO department (name)
VALUES (2, "Back of House");

INSERT INTO department (name)
VALUES (3, "Admin");


CREATE TABLE role (
  id INT PRIMARY KEY,
  title VARCHAR(20) NOT NULL,
  salary DECIMAL (10,2) NOT NULL,
  department_id INT NOT NULL,
);

INSERT INTO role (id, title, salary, department_id)
VALUES (23, "Server", 40000, 1);

INSERT INTO role (title, salary, department_id)
VALUES (24, "Bartender", 60000, 1);

INSERT INTO role (title, salary, department_id)
VALUES (25, "Host", 24000, 1);

INSERT INTO role (title, salary, department_id)
VALUES (26, "Line Cook", 24000, 2);

INSERT INTO role (title, salary, department_id)
VALUES (27, "Dish Washer", 24000, 2);

INSERT INTO role (title, salary, department_id)
VALUES (2, "Manager", 100000, 3);



CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jason", "Weaver", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Carey", "Wayne", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Lisa-Anne", "Gates", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Mitchell", "Sands", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jason", "Douglas", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Stephanie", "Douglas", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Mary", "Beales", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Tanisha", "Davis", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Weazy", "Jefferson", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Kesley", "Wrangler", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Christopher", "Tompson", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Janielle", "Thomas", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Tracy", "Calhoun", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Philip", "Seams", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Josephine", "Cooks", );

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("James", "Diggs", );

INSERT INTO employee (first_name, last_name, manager_id)
VALUES ("Jesus", "Cristo", );

INSERT INTO employee (first_name, last_name, manager_id)
VALUES ("Jessie", "James", );

INSERT INTO employee (first_name, last_name, manager_id)
VALUES ("Jennifer", "London", );

INSERT INTO employee (first_name, last_name, manager_id)
VALUES ("Linda", "Grey", );
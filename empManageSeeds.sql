DROP DATABASE IF EXISTS employeeManagement_db;

CREATE DATABASE employeeManagement_db;

USE employeeManagement_db;


CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES ("Front of House");

INSERT INTO department (name)
VALUES ("Back of House");

INSERT INTO department (name)
VALUES ("Admin");


CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(20) NOT NULL,
  salary DECIMAL (10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Server", 40000, );

INSERT INTO role (title, salary, department_id)
VALUES ("Bartender", 60000);

INSERT INTO role (title, salary, department_id)
VALUES ("Host", 24000);

INSERT INTO role (title, salary, department_id)
VALUES ("Line Cook", 24000);

INSERT INTO role (title, salary, department_id)
VALUES ("Dish Washer", 24000);

INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 100000);



CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
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
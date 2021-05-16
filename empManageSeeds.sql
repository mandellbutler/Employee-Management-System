DROP DATABASE IF EXISTS employeeManagement_db;

CREATE DATABASE employeeManagement_db;

USE employeeManagement_db;


CREATE TABLE department (
  id INT PRIMARY KEY,
  dept_name VARCHAR(20) NOT NULL
);

INSERT INTO department (id, dept_name)
VALUES (100, "Front of House");

INSERT INTO department (id, dept_name)
VALUES (200, "Back of House");

INSERT INTO department (id, dept_name)
VALUES (300, "Admin");


CREATE TABLE role (
  id INT PRIMARY KEY,
  title VARCHAR(20) NOT NULL,
  salary DECIMAL (10,2) NOT NULL,
  department_id INT NOT NULL,
);

INSERT INTO role (id, title, salary, department_id)
VALUES (11, "Server", 40000, 100);

INSERT INTO role (id, title, salary, department_id)
VALUES (12, "Bartender", 60000, 100);

INSERT INTO role (id, title, salary, department_id)
VALUES (13, "Host", 26000, 100);

INSERT INTO role (id, title, salary, department_id)
VALUES (21, "Line Cook", 24000, 200);

INSERT INTO role (id, title, salary, department_id)
VALUES (22, "Dish Washer", 24000, 200);

INSERT INTO role (id, title, salary, department_id)
VALUES (31, "Manager", 83000, 300);

INSERT INTO role (id, title, salary, department_id)
VALUES (32, "General Manager", 100000, 300);


CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jason", "Weaver", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jose", "Garcia", 22, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Carey", "Wayne", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Laura", "Mendoza", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Janielle", "Thomas", 13, 312 );

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Philipe", "Cardoza", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Josephine", "Cooks", 13, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("William", "Lewis", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jecobi", "Reece", 12, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Philip", "Seams", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("James", "Diggs", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mary", "Beales", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Calloway", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kesley", "Wrangler", 12, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Oliver", "James", 22, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jenni", "Meyers", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jason", "Douglas", 13, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Anthony", "Piaz", 22, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lisa-Anne", "Gates", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mitchell", "Sands", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Stephanie", "Douglas", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tracy", "Calhoun", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Keisha", "Holmes", 11, 311);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tanisha", "Davis", 12, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Christopher", "Tompson", 12, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jacob", "Lendoff", 12, 312);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Weazy", "Jefferson", 21, 320);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Daphne", "Greene", 11, 311);

CREATE TABLE manager (
  id INT PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL
);

INSERT INTO manager (id, first_name, last_name, role_id)
VALUES (300, "Jesus", "Cristo", 32);

INSERT INTO manager (id, first_name, last_name, role_id, manager_id)
VALUES (311, "Jessie", "James", 31, 300);

INSERT INTO manager (id, first_name, last_name, role_id, manager_id)
VALUES (312, "Jennifer", "London", 31, 300);

INSERT INTO manager (id, first_name, last_name, role_id, manager_id)
VALUES (320, "Julie", "Grey", 31, 300);
DROP DATABASE IF EXISTS employeeManagement_db;
INSERT INTO departments (id, dept_name)
VALUES 
(100, "Front of House"),
(200, "Back of House"),
(300, "Admin");

INSERT INTO roles (id, title, salary, department_id)
VALUES
(11, "Server", 40000, 100),
(12, "Bartender", 60000, 100),
(13, "Host", 26000, 100),
(21, "Line Cook", 24000, 200),
(22, "Dish Washer", 24000, 200),
(31, "Manager", 83000, 300),
(32, "General Manager", 100000, 300);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
("Jason", "Weaver", 11, 311),
("Jose", "Garcia", 22, 320),
("Carey", "Wayne", 11, 311),
("Laura", "Mendoza", 21, 320),
("Janielle", "Thomas", 13, 312),
("Philipe", "Cardoza", 21, 320),
("Josephine", "Cooks", 13, 312),
("William", "Lewis", 21, 320),
("Jecobi", "Reece", 12, 312),
("Philip", "Seams", 21, 320),
("James", "Diggs", 11, 311),
("Mary", "Beales", 21, 320),
("Kevin", "Calloway", 11, 311),
("Kesley", "Wrangler", 12, 312),
("Oliver", "James", 22, 320),
("Jenni", "Meyers", 11, 311),
("Jason", "Douglas", 13, 312),
("Anthony", "Piaz", 22, 320),
("Lisa-Anne", "Gates", 11, 311),
("Mitchell", "Sands", 11, 311),
("Stephanie", "Douglas", 11, 311),
("Tracy", "Calhoun", 11, 311),
("Keisha", "Holmes", 11, 311),
("Tanisha", "Davis", 12, 312),
("Christopher", "Tompson", 12, 312),
("Jacob", "Lendoff", 12, 312),
("Weazy", "Jefferson", 21, 320),
("Daphne", "Greene", 11, 311);

INSERT INTO managers (id, first_name, last_name, role_id, manager_id)
VALUES 
(300, "Jesus", "Cristo", 32, NULL),
(311, "Jessie", "James", 31, 300),
(312, "Jennifer", "London", 31, 300),
(320, "Julie", "Grey", 31, 300);
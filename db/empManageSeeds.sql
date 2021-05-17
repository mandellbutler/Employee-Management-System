INSERT INTO departments (dept_name)
VALUES 
("Front of House"),
("Back of House"),
("Admin");



INSERT INTO roles (title, salary, department_id)
VALUES
("Server", 40000, 1),
("Bartender", 60000, 1),
("Host", 26000, 1),
("Line Cook", 24000, 2),
("Dish Washer", 24000, 2),
("Manager", 83000, 3),
("General Manager", 100000, 3);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
("Jesus", "Cristo", 7, NULL),
("Jessie", "James", 6, 1),
("Jennifer", "London", 6, 1),
("Julie", "Grey", 6, 1),
("Jason", "Weaver", 1, 2),
("Jose", "Garcia", 1, 2),
("Carey", "Wayne", 4, 4),
("Laura", "Mendoza", 5, 4),
("Janielle", "Thomas", 3, 3),
("Philipe", "Cardoza", 4, 4),
("Josephine", "Cooks", 3, 3),
("William", "Lewis", 4, 4),
("Jecobi", "Reece", 2, 3),
("Philip", "Seams", 5, 4),
("James", "Diggs", 1, 2),
("Mary", "Beales", 4, 4),
("Kevin", "Calloway", 1, 2),
("Kesley", "Wrangler", 2, 3),
("Oliver", "James", 5, 4),
("Jenni", "Meyers", 1, 2),
("Jason", "Douglas", 3, 3),
("Anthony", "Piaz", 4, 4),
("Lisa-Anne", "Gates", 1, 2),
("Mitchell", "Sands", 1, 2),
("Stephanie", "Douglas", 1, 2),
("Tracy", "Calhoun", 1, 2),
("Keisha", "Holmes", 1, 2),
("Tanisha", "Davis", 2, 3),
("Christopher", "Tompson", 2, 3),
("Jacob", "Lendoff", 2, 3),
("Weazy", "Jefferson", 4, 4),
("Daphne", "Greene", 1, 2);

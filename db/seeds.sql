-- Seed your database with initial data here.
USE company_db;


-- set up departments
INSERT INTO department (name)  VALUES 
('Sales'),
('Engineering'),
('Finance'),
('Legal');
-- set up roles 
INSERT INTO role (title, salary, department_id) VALUES 
('Sales Lead', 100000, 1),
('Salesperson', 80000, 1),
('Lead Engineer', 150000, 2),
('Software Engineer', 120000, 2),
('Accountant', 125000, 3),
('Legal Team Lead', 250000, 4),
('Lawyer', 190000, 4);

-- set up employees 
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES 
('John', 'Doe', 1, NULL),
('Mike', 'Chan', 2, 1),
('Ashley', 'Rodriguez', 3, 1),
('Kevin', 'Tupik', 4, 1),
('Malia', 'Brown', 5, 1),
('Sarah', 'Lourd', 6, 1),
('Tom', 'Allen', 7, 1),
('Tina', 'Lee', 1, 1),
('John', 'Smith', 4, 1),
('Jane', 'Doe', 1, NULL),
('Larry', 'Bird', 2, 10),
('Kobe', 'Bryant', 3, 10),
('Michael', 'Jordan', 4, 10),
('Lebron', 'James', 5, 10),
('Kareem', 'Abdul-Jabbar', 3, 10),
('Magic', 'Johnson', 6, 10),
('Bill', 'Russell', 7, 10),
('Wilt', 'Chamberlain', 1, 10),
('Shaquille', 'O''Neal', 2, 1),
('Tim', 'Duncan', 3, 1)
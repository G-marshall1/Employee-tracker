-- Seed your database with initial data here.
INSERT INTO departments (name) VALUES ('accounting', 'finance', 'human resources', 'legal', 'operations', 'production', 'manufacturing', 'logistics', 'quality', 'research', 'development', 'engineering', 'information technology', 'IT', 'web', 'database', 'security', 'publishing', 'public relations');

-- set up roles table for departments
INSERT INTO roles (title, salary, department_id) VALUES ('accountant', 50000, 1), ('accounting manager', 75000, 1), ('finance manager', 75000, 2), ('human resources manager', 75000, 3), ('legal manager', 75000, 4), ('operations manager', 75000, 5), ('production manager', 75000, 6), ('manufacturing manager', 75000, 7), ('logistics manager', 75000, 8), ('quality manager', 75000, 9), ('research manager', 75000, 10), ('development manager', 75000, 11), ('engineering manager', 75000, 12), ('information technology manager', 75000, 13), ('IT manager', 75000, 14), ('web manager', 75000, 15), ('database manager', 75000, 16), ('security manager', 75000, 17), ('publishing manager', 75000, 18), ('public relations manager', 75000, 19);

-- set up employees table for roles
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('John', 'Smith', 1, 1), ('Jane', 'Doe', 2, 2), ('John', 'Doe', 3, 3), ('Jane', 'Smith', 4, 4), ('John', 'Smith', 5, 5), ('Jane', 'Doe', 6, 6), ('John', 'Doe', 7, 7), ('Jane', 'Smith', 8, 8), ('John', 'Smith', 9, 9), ('Jane', 'Doe', 10, 10), ('John', 'Doe', 11, 11), ('Jane', 'Smith', 12, 12), ('John', 'Smith', 13, 13), ('Jane', 'Doe', 14, 14), ('John', 'Doe', 15, 15), ('Jane', 'Smith', 16, 16), ('John', 'Smith', 17, 17), ('Jane', 'Doe', 18, 18), ('John', 'Doe', 19, 19), ('Jane', 'Smith', 20, 20);
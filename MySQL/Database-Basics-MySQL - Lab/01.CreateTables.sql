CREATE TABLE employees(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

CREATE TABLE categories(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULLemployeesemployees
);

CREATE TABLE products(
	id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category_id INT(11) NOT NULL
    
);
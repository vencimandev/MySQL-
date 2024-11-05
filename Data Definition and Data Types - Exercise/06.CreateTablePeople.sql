CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name NVARCHAR(200) NOT NULL,
    picture BLOB,
    height DECIMAL(4, 2),
    weight DECIMAL(5, 2),
    gender CHAR(1) NOT NULL CHECK (gender IN ('m', 'f')),
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (name, picture, height, weight, gender, birthdate, biography) VALUES
    ('John Doe', NULL, 1.75, 70.50, 'm', '1990-01-01', NULL),
    ('Jane Smith', NULL, 1.65, 55.25, 'f', '1995-05-15', NULL),
    ('Alice Johnson', NULL, NULL, 65.00, 'f', '1988-10-10', NULL),
    ('Bob Brown', NULL, 1.80, NULL, 'm', '1985-03-03', NULL),
    ('Charlie Green', NULL, 1.70, 68.00, 'm', '2000-07-07', NULL);

CREATE TABLE directors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(100) NOT NULL,
    notes TEXT
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT
);

CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length INT,
    genre_id INT,
    category_id INT,
    rating DECIMAL(2, 1),
    notes TEXT,
    FOREIGN KEY (director_id) REFERENCES directors(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO directors (director_name, notes) VALUES ('Director A', NULL), ('Director B', NULL), ('Director C', NULL), ('Director D', NULL), ('Director E', NULL);
INSERT INTO genres (genre_name, notes) VALUES ('Action', NULL), ('Drama', NULL), ('Comedy', NULL), ('Horror', NULL), ('Sci-Fi', NULL);
INSERT INTO categories (category_name, notes) VALUES ('Feature', NULL), ('Short', NULL), ('Documentary', NULL), ('Series', NULL), ('Animation', NULL);
INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES 
    ('Movie 1', 1, 2000, 120, 1, 1, 8.5, NULL),
    ('Movie 2', 2, 2001, 90, 2, 2, 7.0, NULL),
    ('Movie 3', 3, 2002, 110, 3, 3, 6.5, NULL),
    ('Movie 4', 4, 2003, 130, 4, 4, 9.0, NULL),
    ('Movie 5', 5, 2004, 140, 5, 5, 8.0, NULL);
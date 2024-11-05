CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time TIMESTAMP,
    is_deleted BOOLEAN DEFAULT FALSE
);

INSERT INTO users (username, password, profile_picture, last_login_time, is_deleted) VALUES
    ('user1', 'password1', NULL, NOW(), FALSE),
    ('user2', 'password2', NULL, NOW(), FALSE),
    ('user3', 'password3', NULL, NOW(), FALSE),
    ('user4', 'password4', NULL, NOW(), FALSE),
    ('user5', 'password5', NULL, NOW(), TRUE);

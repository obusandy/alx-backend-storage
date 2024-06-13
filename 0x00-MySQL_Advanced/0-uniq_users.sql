-- creates a table users
-- email, string (255 chars)
-- name, string (255 chars)
-- id, integer, never null, auto increment

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
    );

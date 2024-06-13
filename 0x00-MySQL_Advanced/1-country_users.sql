-- creates a table users
-- id, integer, never null, auto increment
-- email, string (255 chars)
-- name, string (255 chars)
-- country, enumeration of countries:
-- US, CO and TN, never null

CREATE TABLE IF NOT EXISTS users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  name VARCHAR(255),
  country ENUM('US', 'CO', 'TN') DEFAULT 'US'
);

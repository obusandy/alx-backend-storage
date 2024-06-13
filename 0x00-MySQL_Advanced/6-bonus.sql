--  creates a stored procedure AddBonus that adds
-- a new correction for a student.
-- Drop the procedure if it already exists

DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
-- Create the procedure
CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score FLOAT)
BEGIN
    DECLARE project_id INT; -- Declare a variable to store the project ID
    IF (SELECT COUNT(*) FROM projects WHERE name = project_name) = 0
    -- If the project does not exist, insert it into the projects table
    THEN
        INSERT INTO projects (name) VALUES (project_name);
    END IF;
    SET project_id = (SELECT id FROM projects WHERE name = project_name LIMIT 1);
    INSERT INTO corrections (user_id, project_id, score) VALUES(user_id, project_id, score);
END
$$
-- Reset the delimiter back to ;
DELIMITER ;

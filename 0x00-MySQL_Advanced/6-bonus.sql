--  creates a stored procedure AddBonus that adds
-- a new correction for a student.

DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
    DECLARE project INT;
    -- find the project by name
    SELECT id INTO project FROM projects WHERE name = project_name;
    IF project IS NOT
    -- if the project exists
    THEN
        INSERT INTO corrections (user_id, project_id, score)
        VALUES (user_id, project, score);
    ELSEIF project IS NULL
    THEN
        INSERT INTO projects (name) VALUES (project_name);
    -- retrieve new id
        SELECT id INTO project FROM projects WHERE name = project_name;
        -- corrections for the new project
        INSERT INTO corrections (user_id, project_id, score)
        VALUES (user_id, project, score);
    END IF;
END //

DELIMITER ;

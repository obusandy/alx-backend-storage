-- script that creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student.
-- drop procedure if it exists
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
-- Declare a variable to store the weighted
    DECLARE weit_avg_score FLOAT;
    SET weit_avg_score =
                        (SELECT SUM(score * weight) / SUM(weight)
                        FROM users AS Usr
                        JOIN corrections as C ON U.id=C.user_id
                        JOIN projects AS P ON C.project_id=P.id
                        WHERE Usr.id=user_id)
    UPDATE users
    SET average_score = weit_avg_score
    WHERE id=user_id;
END
$$
DELIMITER ;
-- creates a stored procedure ComputeAverageWeightedScoreForUsers
-- that computes
-- store the average weighted score for all students.
-- ComputeAverageWeightedScoreForUsers is not taking any input.
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
-- Change the delimiter to $$
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    UPDATE users AS Usr,
        (SELECT Usr.id, SUM(score * weight) / SUM(weight) AS weit_avg
        FROM users AS Usr
        JOIN corrections as C ON Usr.id=C.user_id
        JOIN projects AS P ON C.project_id=P.id
        GROUP BY Usr.id)
    AS WeightAv
    SET Usr.average_score = WeightAv.weit_avg
    WHERE Usr.id=WeightAv.id;
END
$$

DELIMITER ;

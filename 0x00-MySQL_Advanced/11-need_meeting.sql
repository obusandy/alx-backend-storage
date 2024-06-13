-- creates a view need_meeting that lists all students
-- that have a score under 80 (strict)
-- no last_meeting or more than 1 month.
-- They score are under (strict) to 80

CREATE VIEW need_meeting AS SELECT name FROM students WHERE score < 80 AND (last_meeting IS NULL OR last_meeting < DATE(CURDATE() - INTERVAL 1 MONTH));

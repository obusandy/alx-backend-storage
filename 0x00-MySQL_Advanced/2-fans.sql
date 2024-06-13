-- script that ranks country origins of bands,
-- ordered by the number of (non-unique) fans
-- Column names must be: origin and nb_fans

SELECT origin, SUM(fans) AS nb_fans
-- From the metal_bands table
FROM metal_bands
-- Group the results by country of origin
GROUP BY origin
-- Order the results by the total number of fans
ORDER BY nb_fans DESC;

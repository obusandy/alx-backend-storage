-- lists all bands with Glam rock as
-- their main style, ranked by their
-- longevity

SELECT band_name, CASE
    WHEN split IS NOT NULL THEN split - formed
    ELSE 2022 - formed
    END AS lifespan
-- From the metal_bands table
FROM metal_bands
WHERE style LIKE '%Glam rock%'
-- Order the results by the lifespan
ORDER BY lifespan DESC;

SELECT category, app_name, rating
FROM analytics a1
WHERE min_installs >= 50000
  AND rating = (
    SELECT MAX(rating)
    FROM analytics a2
    WHERE a1.category = a2.category AND a2.min_installs >= 50000
  )
ORDER BY category;
SELECT app_name
FROM analytics
WHERE app_name ILIKE '%facebook%';
SELECT app_name, genres
FROM analytics
WHERE array_length(string_to_array(genres, ';'), 1) > 1;
SELECT app_name, genres
FROM analytics
WHERE genres ILIKE '%education%';

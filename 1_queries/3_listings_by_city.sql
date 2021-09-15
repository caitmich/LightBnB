SELECT properties.*, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON property_id = properties.id
WHERE city LIKE '%ancouver'
GROUP BY properties.id
Having AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
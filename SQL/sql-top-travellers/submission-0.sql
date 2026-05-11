-- Write your query below
SELECT 
usr.name as name,
CASE 
    WHEN rd.distance IS NULL THEN 0
    ELSE rd.distance
END as travelled_distance
FROM 
    (
        SELECT 
        SUM(distance) as distance
        ,user_id
        FROM rides
        GROUP BY user_id
    ) as rd
RIGHT JOIN users usr
ON rd.user_id = usr.id
ORDER BY travelled_distance desc,  name 

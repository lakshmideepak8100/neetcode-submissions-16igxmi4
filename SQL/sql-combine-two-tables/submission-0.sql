-- Write your query below

SELECT 
    per.first_name,
    per.last_name,
    adr.city,
    adr.state
FROM 
    person per
LEFT JOIN address adr
ON per.person_id = adr.person_id

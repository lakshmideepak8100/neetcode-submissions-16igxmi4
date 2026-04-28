-- Write your query below

-- SELECT g.customer_id 
-- FROM 
--         (SELECT customer_id
--         FROM customers 
--         GROUP BY customer_id
--         HAVING (sum(revenue))>0
--         ) as g
-- WHERE g.year=2020;

SELECT customer_id
FROM
    (
            SELECT * 
            FROM customers
            WHERE year=2020

    ) 
GROUP BY customer_id
HAVING (sum(revenue))>0
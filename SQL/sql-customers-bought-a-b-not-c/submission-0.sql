-- Write your query below

WITH req_customers AS (
    SELECT customer_id FROM orders WHERE product_name = 'A' 
    INTERSECT
    SELECT customer_id FROM orders WHERE product_name = 'B' 
    EXCEPT 
    SELECT customer_id FROM orders WHERE product_name= 'C'
)
SELECT c.customer_id,c.customer_name
FROM req_customers t
JOIN customers c on t.customer_id = c.customer_id
ORDER BY c.customer_name;

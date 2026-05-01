-- Write your query below
SELECT 
    t.student_id,
    t.exam_id,
    t.score
FROM
(
        
    SELECT 
    *,
    ROW_NUMBER() OVER (
        PARTITION BY student_id
        ORDER BY score desc , exam_id ASC
    )
    FROM exam_results

) t
WHERE t.row_number=1;
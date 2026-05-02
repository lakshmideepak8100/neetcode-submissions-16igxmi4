-- Write your query below

SELECT 
        seller_name
FROM 
        seller
WHERE 
    seller_id NOT IN
                    (

                            SELECT 
                                    ord.seller_id
                            FROM 
                                    orders ord
                            INNER JOIN seller sel
                            ON ord.seller_id = sel.seller_id
                            WHERE (ord.sale_date > TO_DATE('2019-12-31', 'YYYY-MM-DD')) AND (ord.sale_date < TO_DATE('2021-01-01', 'YYYY-MM-DD'))

                    )
ORDER BY seller_name


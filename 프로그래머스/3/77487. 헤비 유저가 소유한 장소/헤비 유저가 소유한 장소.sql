SELECT
    a.ID
    , a.NAME
    , a.HOST_ID
FROM PLACES a 
JOIN (
    SELECT
        HOST_ID
    FROM PLACES
    GROUP BY
        HOST_ID
    HAVING
        COUNT(*) >= 2
    ) b
ON a.HOST_ID = b.HOST_ID
ORDER BY 
    a.ID;





SELECT
    USER_ID,
    NICKNAME,
    (CITY || ' ' || STREET_ADDRESS1 || ' ' || STREET_ADDRESS2) AS "전체주소",
    (SUBSTR(TLNO,1,3) || '-' || SUBSTR(TLNO,4,4) || '-' || SUBSTR(TLNO,8)) AS "전화번호"
FROM 
    USED_GOODS_USER
WHERE 
    USER_ID IN 
    (SELECT
        b.USER_ID
    FROM
        USED_GOODS_BOARD a,
        USED_GOODS_USER b
    WHERE 
        a.WRITER_ID = b.USER_ID
    GROUP BY
        b.USER_ID
    HAVING
        COUNT(*) >= 3)
ORDER BY
    USER_ID DESC

-- SELECT 
--     u.USER_ID,
--     u.NICKNAME,
--     u.CITY || NVL(u.STREET_ADDRESS1,' ') || NVL(u.STREET_ADDRESS2, ' ') AS "전체주소",
--     SUBSTR(u.TLNO,1,3) || '-' || SUBSTR(u.TLNO,4,4) || '-' SUBSTR(u.TLNO,8) AS "전화번호"
-- FROM 
--     USED_GOODS_BOARD b
-- JOIN 
--     USED_GOODS_USER u 
-- ON b.WRITER_ID = u.USER_ID
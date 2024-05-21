-- 코드를 입력하세요
SELECT
    a.ANIMAL_ID
    , a.NAME
FROM ANIMAL_INS a
LEFT OUTER JOIN ANIMAL_OUTS b 
ON a.ANIMAL_ID = b.ANIMAL_ID
WHERE b.DATETIME IS NOT NULL
ORDER BY
    (b.DATETIME - a.DATETIME) DESC
FETCH FIRST 2 ROWS ONLY;
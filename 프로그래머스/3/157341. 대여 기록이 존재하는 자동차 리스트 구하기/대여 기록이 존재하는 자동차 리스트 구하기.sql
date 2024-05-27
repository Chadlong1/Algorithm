-- 코드를 입력하세요
-- SELECT
--     CAR_ID
-- FROM 
    SELECT
        DISTINCT(a.CAR_ID)
    FROM 
        CAR_RENTAL_COMPANY_CAR a,
        CAR_RENTAL_COMPANY_RENTAL_HISTORY b
    WHERE
        a.CAR_ID = b.CAR_ID
    AND
        a.CAR_TYPE = '세단'
    AND 
        TO_CHAR(b.START_DATE,'yyyy-mm') = '2022-10'
    ORDER BY
        a.CAR_ID DESC;

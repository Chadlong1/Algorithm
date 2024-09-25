-- 코드를 입력하세요
 SELECT TO_CHAR(B.SALES_DATE,'YYYY') AS YEAR
       ,TO_NUMBER(TO_CHAR(B.SALES_DATE,'MM')) AS MONTH
       ,A.GENDER
       ,COUNT(DISTINCT A.USER_ID) AS USERS
   FROM USER_INFO A
   INNER JOIN ONLINE_SALE B
     ON A.USER_ID = B.USER_ID
  WHERE A.GENDER IS NOT NULL
GROUP BY TO_CHAR(B.SALES_DATE,'YYYY')
        ,TO_CHAR(B.SALES_DATE,'MM')
        ,A.GENDER
ORDER BY YEAR
        ,MONTH
        ,A.GENDER
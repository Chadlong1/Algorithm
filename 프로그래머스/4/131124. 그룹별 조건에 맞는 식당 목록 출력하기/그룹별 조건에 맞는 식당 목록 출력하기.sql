SELECT a.member_name
      ,b.review_text
      ,to_char(b.review_date, 'yyyy-mm-dd') as review_date
FROM MEMBER_PROFILE a
INNER JOIN REST_REVIEW b ON b.member_id = a.member_id
WHERE a.member_id = (SELECT member_id
                     FROM REST_REVIEW
                     GROUP BY member_id
                     ORDER BY count(member_id) DESC
                     FETCH first 1 ROW ONLY)
ORDER BY b.review_date
        ,b.review_text
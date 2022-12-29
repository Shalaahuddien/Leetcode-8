/* Write your T-SQL query statement below */


SELECT 
sale_date,
SUM(
CASE WHEN fruit='apples' THEN sold_num ELSE -1*sold_num END
) AS diff

FROM SALES
GROUP BY sale_date
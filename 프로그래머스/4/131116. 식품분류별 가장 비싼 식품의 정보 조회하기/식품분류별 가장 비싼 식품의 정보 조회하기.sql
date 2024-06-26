-- 코드를 입력하세요
SELECT A.CATEGORY, A.PRICE "MAX_PRICE", A.PRODUCT_NAME
FROM (
    SELECT PRODUCT_ID, PRODUCT_NAME, CATEGORY, PRICE, ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS ROW_NUM
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
) A
WHERE A.ROW_NUM = 1
ORDER BY 2 DESC;
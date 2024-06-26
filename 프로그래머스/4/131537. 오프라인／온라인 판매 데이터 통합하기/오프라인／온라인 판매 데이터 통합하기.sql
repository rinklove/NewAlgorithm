-- 코드를 입력하세요
SELECT DATE_FORMAT(A.SALES_DATE, '%Y-%m-%d'), A.PRODUCT_ID, A.USER_ID, A.SALES_AMOUNT
FROM(
    SELECT USER_ID, PRODUCT_ID, SALES_AMOUNT, SALES_DATE
    FROM ONLINE_SALE
    WHERE DATE_FORMAT(SALES_DATE, '%m') = '03'
    
    UNION
    
    SELECT NULL AS USER_ID, PRODUCT_ID, SALES_AMOUNT, SALES_DATE
    FROM OFFLINE_SALE
    WHERE DATE_FORMAT(SALES_DATE, '%m') = '03'
) A
ORDER BY 1,2,3;
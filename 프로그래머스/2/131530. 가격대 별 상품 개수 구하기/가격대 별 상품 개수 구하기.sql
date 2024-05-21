-- 코드를 입력하세요
SELECT TRUNC(P.PRICE, -4) "PRICE_GROUP", COUNT(P.PRODUCT_ID) "PRODUCTS"
FROM PRODUCT P
GROUP BY TRUNC(P.PRICE, -4)
ORDER BY 1;
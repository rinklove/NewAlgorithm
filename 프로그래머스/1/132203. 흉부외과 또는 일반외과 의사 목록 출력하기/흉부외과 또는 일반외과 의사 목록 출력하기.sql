-- 코드를 입력하세요
SELECT D.DR_NAME, D.DR_ID, D.MCDP_CD, DATE_FORMAT(D.HIRE_YMD, '%Y-%m-%d')
FROM DOCTOR D
WHERE D.MCDP_CD = 'CS' 
OR D.MCDP_CD = 'GS'
ORDER BY 4 DESC, 1;
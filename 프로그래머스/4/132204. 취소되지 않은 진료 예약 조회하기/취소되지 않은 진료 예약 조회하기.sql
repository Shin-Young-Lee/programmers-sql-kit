-- 코드를 입력하세요
SELECT APNT_NO, PT_NAME, PT_NO, A.MCDP_CD, DR_NAME, APNT_YMD
FROM PATIENT P
JOIN APPOINTMENT A USING(PT_NO)
JOIN DOCTOR ON MDDR_ID = DR_ID
WHERE APNT_CNCL_YN = 'N'
    AND APNT_YMD LIKE '2022-04-13%'
    AND A.MCDP_CD = 'CS'
ORDER BY APNT_YMD
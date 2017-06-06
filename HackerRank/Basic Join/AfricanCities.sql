//Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

SELECT C.NAME
FROM CITY C INNER JOIN COUNTRY P ON  C.COUNTRYCODE=P.CODE
WHERE P.CONTINENT='Africa'
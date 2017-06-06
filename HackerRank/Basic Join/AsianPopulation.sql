//Given the CITY and COUNTRY tables, 
//query the sum of the populations of all cities where the CONTINENT is 'Asia'.

SELECT SUM(C.POPULATION)
FROM CITY C INNER JOIN COUNTRY P ON C.COUNTRYCODE=P.CODE
WHERE P.CONTINENT='Asia'
//Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) 
//rounded down to the nearest integer.

SELECT P.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM CITY C LEFT JOIN COUNTRY P ON C.COUNTRYCODE=P.CODE
WHERE P.CONTINENT IS NOT NULL
GROUP BY P.CONTINENT

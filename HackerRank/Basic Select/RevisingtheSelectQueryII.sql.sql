//Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

SELECT NAME
FROM CITY
WHERE COUNTRYCODE='USA' AND POPULATION>120000
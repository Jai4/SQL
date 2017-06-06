//Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

//Not A Triangle: The given values of A, B, and C don't form a triangle.
//Equilateral: It's a triangle with 3  sides of equal length.
//Isosceles: It's a triangle with 2 sides of equal length.
//Scalene: It's a triangle with 3 sides of differing lengths.

SELECT (case 
        when not (a + b > c and b + c > a and c + a > b) then "Not A Triangle"
        when a = b and b = c then "Equilateral"
        when a = b or b = c or c = a then "Isosceles"
else "Scalene" end) 
FROM TRIANGLES;
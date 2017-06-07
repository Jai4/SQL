Question 1: 
Which of the following	keywords are required in any query to retrieve data	from	a	relational	database?		
Select all that	apply.
(A and B)

Question 2: 
Which of the following	database systems recognize the keyword	“LIMIT”	to	limit	the	number	of	rows	
displayed from	a query	output?
(MySQL)

Question 3:	
Which keywords could you use to	determine the names of	the columns contained in a table?
(DESCRIBE in MySQL and HELP in Teradata)

Question 4:
In how	many columns of	the STRINFO table of the Dillard’s database are	NULL values permitted?
(3)

Question 5:		
In how many columns of the STRINFO table of the	Dillard’s database are NULL values present?
(0)

Question 6:	
What was the highest original price in	the Dillard’s database	of the	item with SKU 3631365?

SELECT	orgprice,SKU
FROM	trnsact
WHERE	SKU='3631365'
ORDER	BY orgprice DESC

($17.50)

Question7:	
What is the color of the Liz Claiborn brand item with the highest SKU # in the Dillard’s database (the
Liz Claiborn brand is abbreviated “LIZ CLAI” in the Dillard’s database)?

SELECT	TOP 5 sku, style, color, size, vendor, brand	
FROM	skuinfo	
WHERE	brand like '%Liz CLAI%'
ORDER	BY sku DESC	

(TEAK CBO)
	
Question 8:	
What aspect of	the following query will make the query	crash?

SELECT	SKU, orgprice, sprice, amt,
FROM	TRNSACT
WHERE	AMT>50

(There is a comma after "amt" in the first line	of the query)

Question 9:
What is	the sku	number of the item in the Dillard’s database that had the highest original sales price?

SELECT	TOP 5 sku, orgprice
FROM	trnsact
ORDER	BY orgprice desc	

(6200173)

Question 10:
According to the strinfo table, in how many states within the United States are Dillard’s stores
located? (HINT: the bottom of the SQL scratchpad reports the number of rows in your output)

SELECT	DISTINCT state	
FROM strinfo

(31)

Question 11:	
How many Dillard’s departments start with the letter “e”?

SELECT	DISTINCT deptdesc
FROM	deptinfo
WHERE	deptdesc like 'e%'
ORDER	BY deptdesc

(5)

Question 12:	
What was the date of the earliest sale in the database where the sale price of the item	did not	equal the	
original price of the item,and what was	the largest margin (original price minus sale price) of	an item	sold on	that	
earliest date?

SELECT	TOP 100	orgprice, sprice, orgprice-sprice AS margin,saledate
FROM	trnsact
WHERE	orgprice<>sprice
ORDER	BY saledate ASC, margin	DESC

(04/08/01,$510.00)

Question 13:
What register number made the sale with	the highest original price and	highest	sale price between the	
dates of August	1, 2004	and August 10, 2004? Make sure to sort	by original price first	and sale price second.

SELECT	TOP 100 register, saledate, orgprice, sprice
FROM	trnsact
WHERE	SALEDATEB BETWEEN '2004-08-01' AND '2004-08-10'
ORDER	BY orgprice DESC, sprice DESC

(621)

Question 14:	
Which of the following brand names with the word/letters “liz” in them exist in the Dillard’s
database? Select all that apply

SELECT	DISTINCT brand	
FROM	skuinfo	
WHERE	brand like '%Liz%'
ORDER	BY sku DESC

(Civilize and Beliza)

Question 15:	
What is	the lowest store number	of all	the stores in the STORE_MSA table that	are in	the city of “little	
rock”,”memphis” or “tulsa”?

SELECT	store,	city
FROM	store_msa
WHERE	city IN('little	rock','memphis','tulsa')
ORDER	BY store

(504)
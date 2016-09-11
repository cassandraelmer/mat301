#### Exercises
 
 **Directions**: Create a GitHub account.  All assignments will be submitted to your GitHub account.  You can use any format (e.g., .md, .txt) EXCEPT word processors (e.g., MS Word) to upload your solutions.  All queries will use the `Products` table.  Connect to the database.  Copy [Products.sql](https://github.com/jamesquinlan/mat301/tree/master/products), change database name to your database, paste in Query window, then execute.
 
 ===
 
 **My Responses**
 
 1. What does SQL stand for?  How is it pronounced?

SQL ("es-cue-el" or "sequel") stands for Structured Query Language

 2. Are SQL commands case-sensitive?  How can you determine? 

SQL commands are not case-sensitive because one could query select as `SELECT`, `select`, `SeLeCt`, `sElEcT`, ect. However, it is common syntax to use `SELECT` for commands.

 3. What does DQL stand for?

DQL stands for Data Query Language

 4. True or False:  Is it necessary to use the `FROM` clause with the select statement? 

True

 5. True or False:  Is it necessary to use a `WHERE` clause?  If not, when and why would you use a `WHERE` clause?

False. Where clauses may be used after the `SELECT` command or the `FROM` clause if there are specific conditions that must be met, rather than selecting an entire column.

 6. What is the purpose of the `ORDER BY` clause?  What is its default value?  

`ORDER BY` will sort the selections, ascending or descending. Ascending is default.

 7. Is the data in the products table case sensitive?  Should it be case sensitive/insensitive? 

It is not case sensitive, nor should it be, because sometimes names are entered in different cases, such as "China" or "CHINA" in Products.sql

 8. Select all product names.
```SQL
SELECT name
FROM unemath_Elmer.Products
```
 9. List the MSRP for all products in ascending order.
```SQL
SELECT msrp
FROM unemath_Elmer.Products
ORDER BY msrp
```
 10. Find all products within  category 430.  What is category 430?
```SQL
SELECT *
FROM unemath_Elmer.Products
WHERE category_id=430
```
Category 430 is Wine Glasses
 11. Find all product id and names in category 430 manufactured by 428.
```SQL
SELECT name, product_id
FROM unemath_Elmer.Products
WHERE category_id=430 AND manufacturer_id=428
```
 12. How many products in category 430 manufactured by 428?
answer=18
```SQL
SELECT COUNT(*)
FROM unemath_Elmer.Products
WHERE category_id=430 AND manufacturer_id=428
```
 13. How many countries make products contained in the store?
answer=12998
```SQL
SELECT COUNT(country)
FROM unemath_Elmer.Products
```
 14. How many products are manufactured in the USA?
answer=4091
```SQL
SELECT COUNT(*)
FROM unemath_Elmer.Products
WHERE country='USA'
```
 15. How many products cost the company less than $10?
answer=7701
```SQL
SELECT COUNT(price)
FROM unemath_Elmer.Products
WHERE price <= 10
```
 16. How many products cost the company less than $10 and sell for more than $20?
answer=157
```SQL
SELECT COUNT(*)
FROM unemath_Elmer.Products
WHERE price <= 10 and msrp >=20
```
 17. How many products cost the company less than $10 and sell for less than $20?
answer=7660
```SQL
SELECT COUNT(*)
FROM unemath_Elmer.Products
WHERE price <= 10 and msrp <=20
```
 18. Which products cost less than $10 and sell for more than $20?
```SQL
SELECT *
FROM unemath_Elmer.Products
WHERE price <= 10 and msrp >=20
```
 19. Count all product's that have shipping weight less than 1 pound or greater than 20 pounds.
answer=1106
```SQL
SELECT COUNT(*)
FROM unemath_Elmer.Products
WHERE ship_weight < 1 OR ship_weight >20
```
 20. Create your own query.
List all products with 10 or less items available
```SQL
SELECT *
FROM unemath_Elmer.Products
WHERE inventory <= 10
```

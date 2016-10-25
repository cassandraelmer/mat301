#### Exercises


===
### My answers
1. Select all products (UPC) made in China whose price is less than $50.  
    ```
    SELECT upc FROM unemath_Elmer.Products WHERE country='China' AND msrp < 50;
    ```
      __C__


2. Find products with "bird bath" in the description.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE description LIKE '%bird bath%';
    ```
  __C__

3. Find products whose cost is between $10 and $100.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE price BETWEEN 10 and 100;
    ```
  __C__

4. Find products whose cost is less than or equal to $59.99.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE price <= 59.99;
    ```
  __C__



5. Find products whose ID is between 5000 and 6000 or 7483, 4939, 3452, 9848, 11293, 12001.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE product_id BETWEEN 5000 and 6000 or product_id IN(7483, 4939, 3452, 9848, 11293, 12001);
    ```
  __C__


6. Find products that are not between 5000 and 6000 or 7483, 4939, 3452, 9848, 11293, 12001.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE product_id NOT BETWEEN 5000 and 6000 and product_id NOT IN(7483, 4939, 3452, 9848, 11293, 12001);
    ```
  __C__

7. Find products whose country code is NULL.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE country IS NULL;
    ```  
    Actual reporting based on table-- empty instead of null  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE country='';
    ```
  __C__


8. Calculuate the shipping volume and report it as 'Volume'.  
    ```
    SELECT ROUND(ship_depth*ship_length*ship_width,2) AS 'Volume' FROM unemath_Elmer.Products;
    ```
  __C__


9. Suppose you want to have a 35% markup on all products and sales tax is 7.5%.  Determine the 'Sales Price' of each product.  
    ```
    SELECT price, ROUND((1.35*price)+0.075*(1.35*price),2) AS 'Sales Price' FROM unemath_Elmer.Products;
    ```
  __C__


10. True or False: Both conditions when using the `OR` operator must be true.  
    False
  __C__


11. What is the logical negation of the `IN` operator?  
    `NOT IN`
  __C__


12. What is wrong with the following statement: `SELECT * FROM Products WHERE price BETWEEN 10, 100;`  
    `BETWEEN` requires `AND` not `,`
  __C__


13. Select products with length less than 12 inches and sort decsending.  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE length<12 ORDER BY length desc;
    ```
  __C__


14. How many products are there whose price is between $10 and $20?  
    answer=3226  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE price BETWEEN 10 and 20;
    ```
  __C__

15. How many products are there made in China whose MSRP is between $10 and $20.  
    answer=2189  
    ```
    SELECT * FROM unemath_Elmer.Products WHERE msrp BETWEEN 10 and 20 AND country='China';
    ```
  __C__


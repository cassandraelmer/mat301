#### PS6: Due Dec. 2, 2016
---

Cassandra Elmer
-----

1. True or False: MySQL automatically creates an _index_ for any key (foreign and primary).   
   False   

2. True or False: You can create an index that can improve performance of the database.   
   True   

3. True or False: You should use indexes on columns that return a high percentage of data when that column is used as a filter condition in the `WHERE` clause.   
   False   

4. True or False:  You should use indexes on columns that have a high number of NULL values.   
   False   

5. True or False:  You should not use indexes on columns that are frequently manipulated.   
   True   

6. True or False:  You should never consider indexing a column used in a `GROUP BY` clause.   
   False   

7. What is a disadvantages of using indexes?   
   Files can become very large.   

8. Decide YES or NO whether an index should be used or not.   
  a. Several columns in a small table   
     NO   
  b. Large table with a lot of data manipulation   
     NO   

9.  Determine which is most restrictive, products in categories 200 or 201 and products manufactured by manufacturer number 72.   
   products in categories 200 or 201 returns 142 rows   
   products by manufacturer 72 returns 84 rows   
   products by manufacturer 72 is more restrictive   
   
   Alternately,   
   manufacturer first (listed last) .031 seconds   
   category first (listed last) .047 seconds   
   manufacturer more restrictive   
   

10.  Create a VIEW of all products from categories 200 or 201 manufactured by manufacturer 72 or 88.   
   ```sql
   CREATE VIEW `Specials` AS
   SELECT Products.product_id
   FROM Products
   WHERE category_id IN(200,201) AND manufacturer_id IN(72,88);
   ```
   Run to see results:
   ```sql
   SELECT * FROM unemath_Elmer.Specials;
   ```

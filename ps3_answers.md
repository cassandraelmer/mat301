## Problem Set 3 

1. Define the terms: relation, tuple, attribute, record, and field.   
   Relation - a table; a group of related data   
   Tuple - a row or record; entered data in a relation    
   Attribute - a column or field; grouped data by name or value    
   Record - a row or tuple; entered data in a relation     
   Field - a column or attribute; grouped data by name or value    
2. What are keys in a relation?   
   A unique or nonunique identifier for individuals in a relation. Can be candidate, primary, foreign, natural, surrogate, or composite.

3. What is a surrogate key and how is it used?   
   The unique identifier in the specific relation. Examples include a product_id that is only used in the store in question.

4. In the following equation, Area = Length x Width, identify the determinant(s).   
   Length and width are determinants.

5. If a relation has no duplicate data, how can you be sure there is always at least one primary key?   
   Primary keys are identifiers for the data, so if there are no duplicates, they are all unique, and therefore can be primary keys.

6. Give an example of a relation.  Determine a natural key for this relation.   
   An example relation is the voting register for a certian county. The natural key would be the individuals' social security number.

  For question 7 - 8, Consider product *orders*.  In particular, associated with an order is: customer name (first and last), address (street, city, state, zip), phone, email, the products orders (including item, quantity, and price).  

7. Create a relational data model for *orders*.  Consider applying normalization rules (discuss Monday)   
   
   1NF
   --------------------------------
   
   | Orders   |
   |----------|
   | first    |
   | last     |
   | street   |
   | city     |
   | state    |
   | zip      |
   | phone    |
   | email    |
   | item     |
   | quantity |
   | price    |
   
   2NF
   ---------------------------------
   
   Orders
   -----------------
   | order_id (PK) |   
   |---------------|   
   | item          |
   | quantity      |
   | price         |
   -----------------
   
   Customers
   --------------------
   | customer_id (PK) |   
   |------------------|   
   | first_name       |
   | last_name        |
   | street           |
   | city             |
   | state            |
   | zip              |
   | phone            |
   | email            |
   --------------------
   
   3NF
   -------------------------------
   
   Items
   -----------------
   | order_id (PK) |   
   |---------------|   
   | item          |
   | quantity      |
   -----------------
   
   Customers
   --------------------
   | customer_id (PK) |   
   |------------------|   
   | first_name       |
   | last_name        |
   | zip (FK)         |
   --------------------
   
   Customer Information
   ------------
   | zip (PK) |
   |----------|
   | street   |
   | city     |
   | state    |
   | phone    |
   | email    |
   ------------
   
   Order
   --------------------
   | order_id (PK)    |
     customer_id (PK)  
   |------------------|
   | price            |
   
   

8. For customer, could email be used as a primary key?  If so, state why.  Also, if possible to use as a primary key, discuss any disadvantages of using email as a primary key.   
   It could be used because people should only have one email. However, a person might make orders with two different emails, or no longer use that email.

9. Given two relations S and R below find the Cartsian Product S x R.   
   12311   
   12223   
   12215   
   23311   
   23223   
   23215   

10. Find the natural join between the Faculty and Department relations below.   
   "Dept" is the natural join.
   

S
--------------
| A | B |
|---|---|
| 1 | 2 |
| 2 | 3 |
---------

R
------------
| C | D | E |
|---|---|---|
| 3 | 1 | 1 |
| 2 | 2 | 3 |
| 2 | 1 | 5 |




Faculty
--------------
| Name | ID | Dept |
|-------|----|----------------|
| Joe | 1 | Chemistry |
| Susan | 2 | Math |
| Tom | 3 | Marine Science |
| Mike | 4 | Math |


Department
------------
| Dept | Chair  |
|---|---|
| Chemistry | John |
| Math | Mike |
| Marine Science | Barry |

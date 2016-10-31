## Problem Set 4 

1. Create three tables: Customers, Orders, and OrderItems.   
   

2. Why do we need an OrderItems table?   
   one customer can have many orders   

3. Create linked tables in MS Access.   
   

4. Create forms to enter customer data.   
   name, address, etc   

5. Create a form with a subform to enter orders and order item.   
   details of order   

6. Use forms created in 4 and 5 to insert Customers and Orders.  Add customers that have not made any orders. Make the number of entries relatively small.  Why?   
   many entries will make it difficult to just test the fit of the model   

7. Use SQL DML to INSERT records into Customers and Orders (and OrderItems).   
   ```sql
   INSERT INTO `unemath_Elmer.Customers` (`the columns from my table`) 
   VALUES [make up stuff];
   5-10 customers, 10-15 orders
   ```

8. Find all customer orders.   
   ```sql
   SELECT * FROM unemath_Elmer.Orders;
   ```

9. Select all customers that orders a certain product (This will depend on what data you entered into the table).  Find all customers that ordered product 3452.  
   ```sql
   SELECT customer_id FROM unemath_Elmer.Orders WHERE product_id = 200;
   ```
   ```sql
   SELECT customer_id FROM unemath_Elmer.Orders WHERE product_id = 3452;
   ```

10. List 5 questions that you can answer from this data.    
    1. How many customers are from New York, NY?
    2. How many orders totalled over $50?
    3. Which state sells the most products?
    4. What is the maximum number of orders a single customer has placed?
    5. How many items are in the largest order?   



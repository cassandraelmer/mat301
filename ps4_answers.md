## Problem Set 4 

1. Create three tables: Customers, Orders, and OrderItems.   
   

2. Why do we need an OrderItems table?   
   one customer can have many orders, and these orders can have many items   

3. ~~Create linked tables in MS Access~~.   
   

4. ~~Create forms to enter customer data.~~   
   would contain name, address, etc   

5. ~~Create a form with a subform to enter orders and order item.~~   
   would contain details of order   

6. Use forms ~~created in 4 and 5~~ in MySQL to insert Customers and Orders.  Add customers that have not made any orders. Make the number of entries relatively small.  Why?   
   ![Forms1](https://github.com/cassandraelmer/mat301/blob/master/Forms1.png)   
   ![Forms2](https://github.com/cassandraelmer/mat301/blob/master/Forms2.png)   
   
   many entries will make it difficult to just test the fit of the model   

7. Use SQL DML to INSERT records into Customers and Orders (and OrderItems).   
   ```sql
   INSERT INTO `unemath_Elmer.Customers` (`customer_id`,`first_name`,`last_name`,`address 1`,`address 2`,`zip_code`,`phone`,`email`) 
   VALUES 
   (1001,'Joseph','Polk','100 Main Street','',13601,3157789436,'jpolk37@gmail.com'),
   (1002,'Sally','Polk','100 Main Street','',13601,3157789436,'spolk62@gmail.com'),
   (1003,'Lynn','Avery','36145 Cemetery Rd','',13656,4083649127,'lavery7462@yahoo.com'),
   (1004,'Nathan','Lake','211 Washington St','PO Box 497',04005,8406686468,'nlake486@gmail.com'),
   (1005,'Karin','White','57 Longways Drive','PO Box 3179',04005,4087624935,'kwhite16@yahoo.com');
   ```
   
   ```sql
   INSERT INTO `unemath_Elmer.Orders` (`order_id`,`customer_id`,`subtotal`,`total`,`date`)
   VALUES
   (1001,1001,43.98,46.40,'2016-03-22 21:14:50'),
   (1002,1004,65.97,69.60,'2016-03-22 22:01:03'),
   (1003,1002,7.00,7.39,'2016-03-25 08:31:24'),
   (1004,1003,20.50,21.63,'2016-04-14 09:05:59'),
   (1005,1001,106.20,112.04,'2016-10-08 13:17:33'),
   (1006,1003,28.68,30.26,'2016-10-08 15:45:06'),
   (1007,1005,23.30,24.58,'2016-10-17 03:20:20');
   ```
   
   ```sql
   INSERT INTO `unemath_Elmer.Order Items` (`order_item_id`,`order_id`,`product_id`,`quantity`)
   VALUES
   (1001,1001,1007,1),
   (1002,1001,1009,1),
   (1003,1002,1003,1),
   (1004,1002,1009,1),
   (1005,1002,1002,1),
   (1006,1003,2392,1),
   (1007,1004,5293,1),
   (1008,1005,12213,6),
   (1009,1006,13827,1),
   (1010,1006,13828,1),
   (1011,1007,2388,1),
   (1012,1007,2389,1),
   (1013,1007,2390,2),
   (1014,1007,2391,2),
   (1015,1007,2392,1);
   ```

8. Find all customer orders.   
   ```sql
   SELECT * FROM unemath_Elmer.Orders;
   ```

9. Select all customers that ordered a certain product (This will depend on what data you entered into the table).  Find all customers that ordered product 3452.  
   ```sql
   SELECT customer_id FROM unemath_Elmer.Orders WHERE product_id = 1009;
   ```
   ```sql
   SELECT customer_id FROM unemath_Elmer.Orders WHERE product_id = 3452;
   ```

10. List 5 questions that you can answer from this data.    
    1. How many customers are from Watertown, NY?   

    2. How many orders totalled over $50?   

    3. Which state sells the most products?   

    4. What is the maximum number of orders a single customer has placed?   

    5. How many items are in the largest order?   

    


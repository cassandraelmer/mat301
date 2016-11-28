

## Exercises (using SQL)
---

1. INSERT 10 new customer into the database that has NOT made orders.   
   ```sql   
   INSERT INTO `Customers` (`customer_id`,`first_name`,`last_name`,`address 1`,`address 2`,`zip_code`,`phone`,`email`)
    VALUES 
    (1009,"Eleanor","Nixon","Ap #924-3318 Mattis Avenue","","92414","1497480233","mauris.erat@pellentesquemassalobortis.org"),
    (1010,"Walter","Villarreal","Ap #262-3523 Nulla Avenue",'',"86329","6133585400","sagittis.Duis@elitfermentumrisus.com"),
    (1011,"Nita","Murphy","698-1372 In St.","","74325","6536838255","Donec.sollicitudin@ac.ca"),
    (1012,"Harlan","Solis","551 Sit Avenue","P.O. Box 350","98407","7673511244","Aliquam.nisl.Nulla@placeratorcilacus.ca"),
    (1013,"Jordan","Alford","Ap #214-192 Metus. St.","","45233","1224895812","malesuada.vel@egestasnunc.edu"),
    (1014,"Quamar","Mathis","2690 Congue. St.","P.O. Box 189","87832","4156993661","tellus@primisinfaucibus.edu"),
    (1015,"Abbot","Ballard","755-2108 Erat St.","","24250","1136652942","tincidunt.congue@facilisis.org"),
    (1016,"Thomas","Leblanc","1305 Massa Avenue","P.O. Box 792","42210","1365961182","purus@mollisPhaselluslibero.edu"),
    (1017,"Charlotte","Franco","Ap #365-9420 Purus, St.","","55394","7878331364","mattis.ornare.lectus@idenim.net"),
    (1018,"Hasad","Luna","420-4135 Egestas St.","","18448","7428167933","accumsan.neque@lectusNullamsuscipit.com");
   ```
1. Update a customer's address as 'they have moved' since you added it.   
1. Delete a customer that you recently added.   
1. Update a manufacturer's website information.   
1. Update one of the unknown categories.   
1. Find all customers that have not made any orders (of course they are probably the ones you just added)   
1. Select all products that customers from zip code 26034 have ordered.   
1. What other queries can you form?  What other queries might be of interest to the owners of the store?  What queries might be of interest to the customers?   

## More functions
---

Research the following, determine their functionality and syntax of use:

1. UPPER()   
   ```sql
   SELECT UPPER('text') AS message
   ```   
   makes everything uppercase   
1. LOWER()   
   ```sql
   ```   
   makes everything lowercase
1. LTRIM()   
   trim extra spaces from left   
1. RTRIM()   
   trim extra spaces from right   
1. CONCAT()   
   ```sql
   SELECT concat('fname',' ','lname') AS fullname
   ```   
   do not need FROM   
   will make strings combined   
1. LENGTH()   
   length of string
1. ISNULL()   
   find entries that are null   
1. LPAD()   
   add/'pad' string to the left of another   
1. RPAD()   
   add/'pad' string to the right of another   

### Assignment (Due One Week - Wednesday before Thanksgiving)

Create a datamodel (database) for the math department.  We need a database that can be used to track and advise students as well as 
aid in scheduling future classes.  The database should include students (include e.g., PIN, graduation year), whether they are major/minor, list of faculty advisors from the math department, and which classes the students have had and in which semester.  What do you recommend for a front-end interface to the database?  Are there  any other details of which you can think?

[Click here for sql](https://github.com/cassandraelmer/mat301/blob/master/create%20math%20department%20tables.sql)


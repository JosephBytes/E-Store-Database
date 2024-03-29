## E-store Database: creation of the database for an online store and querying the database.
### Language: SQL
### Version: 03/18/2024
### Author: Joseph Abdulwahab

## _e_store_Data.sql_
Creates relations Products and Reviews which are populated with values.  
  
Products(id, name, price, stock, created_at)    
    --> Primary key: {id}  
      
Reviews(id, product_num, stars)  
    --> Primary key: {id, product_id}  
    --> Foreign key: {product_id references Products(id)}  

## _e_store_queries.sql_
Queries performed on the database created in e_store_Data.
Some queries performed are:
1) Using aggregation to find the lowest priced product sold.
2) Using aliasing with the 'as' keyword.
3) Finding the Minimum and Maximum price of products sold.
4) Finding the average stars for the Tablet product using aggregation.
5) Returning the average stars for each product (The same product has different star reviews).
6) Return products with average stars that are greater than 3.
7) Return products with average stars that are less than 4.

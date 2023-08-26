#1

clothes_db = dbConnect(drv, dbname='/Users/kartikadi/downloads/Tiny_Clothes.sqlite')

dbGetQuery(clothes_db,
           "SELECT p.PROD_NO, p.NAME, COLOR, iv.ORDER_NO, iv.QUANTITY
           from PRODUCT p inner join INVOICES iv
           on p.PROD_NO = iv.PROD_NO
           ")
#2

#
#Customer -  Primary Key: CUST_NO,
# Product - Primary Key: PROD_NO
# Sales_Order - Primary Key: ORDER_NO, Foreign Key (Customer): CUST_NO
# Sales_order_online - Primary Key: Order_No, Foreign Key (Product): PROD_NO

#3

dbGetQuery(clothes_db, 
           "SELECT *
            FROM EMPLOYEE
            WHERE AGE<=65 AND AGE>=31
            ")

#4

dbGetQuery(clothes_db, 
           "SELECT COUNT(CUSTOMER.CUST_NO)
            FROM CUSTOMER
            ")

#5

dbGetQuery(clothes_db, 
           "SELECT *
            FROM CUSTOMER
            WHERE Address = '' or Address = 'missing'
            ")
#6

dbGetQuery(clothes_db, 
           "SELECT *
            FROM INVOICES
            WHERE Quantity >10000
            ")

#7

dbGetQuery(clothes_db, 
           "SELECT *
            FROM EMPLOYEE
            ORDER BY age DESC
            ")

#8

dbGetQuery(clothes_db, 
           "SELECT NAME
            FROM CUSTOMER
            
            ")

dbGetQuery(clothes_db, 
           "SELECT NAME as FIRST_NAME
            FROM CUSTOMER
            
            ")

dbGetQuery(clothes_db, 
           "SELECT NAME as FIRST NAME
            FROM CUSTOMER
            
            ")
#Using FIRST NAME as opposed to FIRST_NAME yields a syntax error

dbListTables(clothes_db)
dbListFields(clothes_db, "Product")
dbListFields(clothes_db, "Sales_Order")
dbListFields(clothes_db, "Invoices")

dbGetQuery(clothes_db, "Select p.PROD_NO, i.Quantity, i.ORDER_NO, p.PROD_NO as Prod_No4, sord.Quantity as Quantity5, i.PRICE as Price
           from PRODUCT p inner join INVOICES i on p.PROD_NO = i.PROD_NO
           inner join SALES_ORDER_LINE sord on p.PROD_NO = sord.PROD_NO

           
           ")








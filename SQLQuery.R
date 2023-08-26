getwd()
library(DBI)
library(RSQLite)
drv = dbDriver("SQLite")
clothes_db = dbConnect(drv, dbname='/Users/kartikadi/downloads/Tiny_Clothes.sqlite')
dbListFields(clothes_db, "EMPLOYEE_PHONE")

EMPLOYEE <- read.csv("/Users/kartikadi/EMPLOYEE.txt")
EMPLOYEEPHONE <- read.csv("/Users/kartikadi/downloads/EMPLOYEE_PHONE.txt")
DEPARTMENT <- read.csv("/Users/kartikadi/downloads/DEPARTMENT.txt")
CUSTOMER <- read.csv("/Users/kartikadi/downloads/CUSTOMER.txt")
INVOICES <- read.csv("/Users/kartikadi/downloads/INVOICES.txt")
PRODUCT <- read.csv("/Users/kartikadi/downloads/PRODUCT.txt")
SALES_ORDER_LINE <- read.csv("/Users/kartikadi/downloads/SALES_ORDER_LINE.txt")
SALES_ORDER <- read.csv("/Users/kartikadi/downloads/SALES_ORDER.txt")
SOFT_TOYS_DATA <- read.csv("/Users/kartikadi/downloads/SOFT_TOYS_DATA.txt")
STOCK_TOTAL <- read.csv("/Users/kartikadi/downloads/STOCK_TOTAL.txt")

dbWriteTable(clothes_db, "EMPLOYEE", EMPLOYEE)
dbWriteTable(clothes_db, "EMPLOYEEPHONE", EMPLOYEEPHONE)
dbWriteTable(clothes_db, "DEPARTMENT", DEPARTMENT)
dbWriteTable(clothes_db, "CUSTOMER", CUSTOMER)
dbWriteTable(clothes_db, "INVOICES", INVOICES)
dbWriteTable(clothes_db, "PRODUCT", PRODUCT)
dbWriteTable(clothes_db, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(clothes_db, "SALES_ORDER", SALES_ORDER)

dbGetQuery(clothes_db, 
           "SELECT EMP_NO, AGE
            FROM EMPLOYEE
            WHERE AGE < 50
            ")

dbGetQuery(clothes_db, 
           "SELECT NAME
            FROM EMPLOYEE
            ")

dbGetQuery(clothes_db, 
           "SELECT DISTINCT NAME
            FROM EMPLOYEE
            ")

dbGetQuery(clothes_db, 
           "SELECT NAME
            FROM EMPLOYEE
            WHERE NAME LIKE 'B%'
            ")

dbGetQuery(clothes_db, 
           "SELECT NAME, AGE
            FROM EMPLOYEE
            WHERE NAME LIKE '%r%'
            ")

dbGetQuery(clothes_db, 
            "SELECT NAME, NI_NO
             FROM EMPLOYEE
            ")

dbGetQuery(clothes_db, 
           "SELECT *
            FROM EMPLOYEE
            WHERE AGE<=65 AND AGE>=31
            ")







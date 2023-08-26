install.packages("DBI")
install.packages("RSQLite")
install.packages("sqldf")
kartidb <- dbConnect(RSQLite::SQLite(), "my-db.chinook")
EMPLOYEE <- read.csv("/Users/kartikadi/EMPLOYEE.txt")
EMPLOYEEPHONE <- read.csv("/Users/kartikadi/EMPLOYEE_PHONE.txt")
DEPARTMENT <- read.csv("/Users/kartikadi/DEPARTMENT.txt")
CUSTOMER <- read.csv("/Users/kartikadi/CUSTOMER.txt")
INVOICES <- read.csv("/Users/kartikadi/INVOICES.txt")
PRODUCT <- read.csv("/Users/kartikadi/PRODUCT.txt")
SALES_ORDER_LINE <- read.csv("/Users/kartikadi/SALES_ORDER_LINE.txt")
SALES_ORDER <- read.csv("/Users/kartikadi/SALES_ORDER.txt")
SOFT_TOYS_DATA <- read.csv("/Users/kartikadi/SOFT_TOYS_DATA.txt")
STOCK_TOTAL <- read.csv("/Users/kartikadi/STOCK_TOTAL.txt")
TINYCLOTHES<- read.csv("/Users/kartikadi/Tiny_Clothes")

dbWriteTable(kartidb, "EMPLOYEE", EMPLOYEE)
dbWriteTable(kartidb, "EMPLOYEEPHONE", EMPLOYEEPHONE)
dbWriteTable(kartidb, "DEPARTMENT", DEPARTMENT)
dbWriteTable(kartidb, "CUSTOMER", CUSTOMER)
dbWriteTable(kartidb, "INVOICES", INVOICES)
dbWriteTable(kartidb, "PRODUCT", PRODUCT)
dbWriteTable(kartidb, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(kartidb, "SALES_ORDER", SALES_ORDER)
dbWriteTable(kartidb, "SOFT_TOYS_DATA", SOFT_TOYS_DATA)
dbListTables(kartidb)
SELECT COUNT(*) from kartidb
SELECT [CUSTOMER]
  FROM [kartidb]








#1
install.packages("DBI")
install.packages("RSQLite")
library(DBI)
library(RSQLite)
drv = dbDriver("SQLite")
chinook_db = dbConnect(drv, dbname="./data/Chinook_Sqlite.sqlite")

#2
#Primary keys are used to assign each row to a unique column or columns that is used to identify that row. It helps
#ensure that each row has a unique identification. A foreign key is a column or columns in two different tables that creates
#a link between them. It ensures that references between the tables are efficient.

#Relational databases model real world data by storing it in tables and each row representing a real world entity. It also creates
# relations between its tables through common columns

#SQL is a language that interacts with data stored in databases. SQLite is a lightweight, faster file-based version designed
#for simpler applications. RSQlite is a package in R that allwos you to use the faster SQLite

#3
dbListTables(chinook_db)
Customer.SupportRepId -> Employee.EmployeeId
Invoice.CustomerId -> Customer.LastName
Track.Albumid -> Album.Title
InvoiceLine.InvoiceId -> Invoice.CustomerId
PlaylistTrack.PlaylistId -> Playlist.name
Invoice.total -> EmployeeId.ReportsTo
InvoiceLine.Quantity -> Track.UnitPrice
Album.title -> Track.name
Employee.ReportsTo -> Invoice.Total
InvoiceLine.TrackId -> Album.title
PlaylistTrack.PlaylistId -> Genre.Genreld

#4

dbGetQuery(chinook_db,
           "select CustomerId, FirstName, LastName, State, Country
           from Customer
          HAVING State == California
limit 10")

dbGetQuery(chinook_db,
           "select CustomerId, FirstName, LastName, State, Country, count(*)
           from Customer
          HAVING Country==USA
limit 10")




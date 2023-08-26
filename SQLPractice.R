library(DBI)
library(RSQLite)
drv = dbDriver("SQLite")
chinook_db = dbConnect(drv, dbname='/Users/kartikadi/documents/Chinook_SQlite.sqlite')
dbListTables(chinook_db)
dbListFields(chinook_db, "Track")
dbGetQuery(chinook_db, 
           "select TrackId, Name, AlbumId, Milliseconds
            from Track
            limit 5")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 ")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 and AlbumId=18")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 or AlbumId=18")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 and not AlbumId=18")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 and AlbumId<>18")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Milliseconds<30000 and AlbumId!=18")

dbGetQuery(chinook_db, 
           "SELECT TrackId, Name, AlbumId, Bytes
            FROM Track
            WHERE bytes<=400000 and bytes>=300000")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM Track
            WHERE Name='Branch Closing'")

dbGetQuery(chinook_db, 
           "SELECT *
            FROM track
            WHERE milliseconds<30000 and AlbumId!=18")

#not case sensitive

dbGetQuery(chinook_db, 
           "SeLecT tRaCkId, nAmE, alBumId, byTes
            FROM TracK
            wHeRE nAme='BraNcH cLoSiNg'")

#since the row name is case sensitive, this does not work

dbGetQuery(chinook_db, 
           "SELECT *
            FROM track
            WHERE milliseconds<30000 
            GROUP BY AlbumId
            HAVING TrackId>150")

#This query selects all columns for track wehere milliseconds is less than 30,000, grouped by the ALbum ID number
#Finally, the trackID also has to be greater than 150

dbDisconnect(chinook_db)

#Gain 1, using the WHERE  query
#Gain 2, creating database connection
#Gain 3, selecting all columns with *











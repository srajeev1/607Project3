#PostgreSQL Server Information

* Host: psql.natame.com
* Port: 5432
* Username: [follow this link](https://trello.com/c/2WsCBOdB)
* Password: [follow this link](https://trello.com/c/2WsCBOdB)
* Database name: is607_project3

##Configuring PgAdmin

* From PgAdmin's menu, select **FILE | ADD SERVER**
* Enter the server settings as illustrated ![here](https://raw.githubusercontent.com/srajeev1/607Project3/master/postgresql_info/pgadmin-psql.natame.png)

##Importing Data into Psql

* Create target table as usual
* Use psql command to connect to server as follows: `psql is607_project3 --host=psql.natame.com --username=USE_THE_RIGHT_USERNAME --password`
* When connected, you can use the \copy command to load the contents of target table from CSV file as follows: `\copy zipcodes from 'C:\PATH\TO\YOUR\FILE.CSV' WITH DELIMITER ',' CSV HEADER ;`

For details, refer to: [**Using the \copy Command to Import Data to a Table on a PostgreSQL DB Instance**](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/PostgreSQL.Procedural.Importing.html)


##Connecting from R

** FOR SECURITY REASONS, THE USERNAME AND PASSWORD IS NOT LISTED HERE. REMEMBER TO ADD THE PROPER user and password. See [here](https://trello.com/c/2WsCBOdB) for details**

```
library("RPostgreSQL")

# Establish connection to PoststgreSQL using RPostgreSQL
drv <- dbDriver("PostgreSQL")

# Full version of connection seetting
con <- dbConnect(drv, dbname="is607_project3"
                ,host="psql.natame.com"
                ,user="ENTER_THE_USERNAME_HERE"
                ,password="ENTER_THE_PASSWORD_HERE")


## Submits a statement
rs <- dbSendQuery(con, "select * from zipcodes LIMIT 10;")

## fetch all elements from the result set and store into sample_data dataframe
sample_data <- fetch(rs,n=-1)
View(sample_data)

```

## Questions?

Email me: Mauricio Alarcon: <rmalarc@msn.com>

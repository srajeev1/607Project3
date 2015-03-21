Please do the following to load the files to the RDBMS Tables in the database:
1. Copy the following files:
   MOVIE.csv
   CATEGORY.csv
   NOMINATIONS.csv 
to a directory, and give at least the READ privileges to all the users in your computer on these files.

2. Next create a database in your postgres. You may name the database as AWARDS_DB

3. Execute the script given in Data_Definition_Statements.sql file. But make sure that you modify the files location in the COPY command, to the directory where you copied the files (in step 1 above)

4. If you are interested, how I performed the data cleanup, and finally created the three .csv files, read the files in "DetailedAnalysis_Read_if_interested

NOTE that the NOMINATIONS table is modified from the original design. I had to add a new column called "Nomination_Number", so that we can store the Movies, and Nominations, where the same movie was nominated in the same year and in the same category. The database design doc still refers to the old design. I will update this doc on Monday, since I do not have access to ERWIN at home.

Let me know if you have any questions.

Thanks, Sekhar Mekala
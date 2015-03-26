The files in this folder describe how the data was cleansed. You really do not need to run these scripts, since the required files (for database load) is already given in the Awards_DB folder (read the Readme File of Awards_DB folder). 

If you are interested...continue to read...

The file "academy_awards.csv" ciles contains all the movies and the academy awards won since 1927/28. This information is obtained from web (https://www.aggdata.com/awards/oscar). But this file is not really in clean format. So I had to make a bunch of data modifications (directly opening the file). The modified file is present in this git folder with the name "academy_awards.csv". You must use this file as input to the following program: 

Step_1_R_Code_To_Cleanup.txt

The above program "Step_1_R_Code_To_Cleanup.txt" outputs "Category.csv", "Movie.csv", "Academy_Awards_Temp.csv". These three files will be used to populate the postgresql tables. See the Data definition language script and the LOAD script at Step_2_Postgresql_Code.txt. 

Note: The Step_2_Postgresql_Code.txt takes three files ("Category.csv", "Movie.csv", "Academy_Awards_Temp.csv") as input to load the relational tables. The "Step_2_Postgresql_Code.txt" also produces an output file "Awards_File.csv". This file will be used to analyze the data (final file). For everyones review this file is present at https://github.com/srajeev1/607Project3/blob/master/Final_Analysis_File/Awards_File.csv
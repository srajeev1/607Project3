Awards_File sturcture:

movie_id,movie_name,year,category_id,category_name,won

movie_id: Unique identifier to identify movie
movie_name: Name of the movie
year: Year awarded/nominated
category_id: unique identifier of the category
category_name: name of the category, in which the movie was nominated/awarded
won: 1 or 0. 1 indicates nominated and Won, and 0 indicates nominated but not won.


To read the file to a data frame say "awards_df", use the following command:

awards_df <- read.csv("Awards_File.csv",stringsAsFactors=F)

Please review and let me know if you have any questions.



Thanks,
Sekhar
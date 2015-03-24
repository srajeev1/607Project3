1. Awards_File sturcture:

movie_id,movie_name,year,category_id,category_name,won

movie_id: Unique identifier to identify movie
movie_name: Name of the movie
year: Year awarded/nominated
category_id: unique identifier of the category
category_name: name of the category, in which the movie was nominated/awarded
won: 1 or 0. 1 indicates nominated and Won, and 0 indicates nominated but not won.


To read the file to a data frame say "awards_df", use the following command:

awards_df <- read.csv("Awards_File.csv",stringsAsFactors=F)


The Awards_File can be pivoted to have the following structure for better analysis. The program Data_Transform.R will create another data frame called awards_re_modified with the following structure. In this structure, the columns c1, c2, c3...c23 represent the awards categories. If a movie is not nominated then that category will have NA. If a movie is nominated but did not win the award then the category contains 0, and if a movie is nominated and also wins the award, then the category column contains 1. NOTE that the program Data_Transform.R also produces data frame "award_categories", which contains the information regarding the category ID and category name.


   movie_id year c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23
1         1 2010  0 NA NA NA NA NA NA NA NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
2         2 2010  0 NA NA  0 NA  0  0  0  0  NA  NA  NA  NA  NA  NA   0  NA  NA   0   0  NA   0  NA
3         3 2010  0 NA NA NA NA NA  0 NA  0  NA  NA   1  NA   1  NA   0  NA  NA   0  NA  NA   1  NA
4         4 2010  1  0 NA  0 NA  0  0  0  1  NA  NA   0  NA   0  NA   1  NA  NA   0  NA  NA   1  NA
5         5 2010  0 NA NA NA NA NA NA NA NA  NA  NA   0  NA   0   0   0  NA  NA  NA  NA  NA   0  NA
6         6 2010 NA  1 NA  1 NA NA NA NA  0  NA  NA   0  NA  NA  NA   0  NA  NA  NA  NA  NA   0  NA
7         7 2010 NA  0  0 NA NA NA NA NA NA  NA  NA  NA  NA  NA  NA   0  NA  NA  NA  NA  NA   0  NA
8         8 2010 NA  0 NA NA NA NA NA NA NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
9         9 2010 NA  0  0 NA NA NA NA NA NA  NA  NA  NA  NA  NA  NA   0  NA  NA  NA  NA  NA   0  NA
10       10 2010 NA NA  0 NA NA NA NA NA NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
..      ...  ... .. .. .. .. .. .. .. .. .. ... ... ... ... ... ... ... ... ... ... ... ... ... ...

Please review and let me know if you have any questions.



Thanks,
Sekhar
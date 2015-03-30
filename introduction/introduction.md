---
title: "Project3_introduction"
output: html_document
---

* * *

####1. Executive Summary

This project is to answer the question: “In the Academy Awards, is Best Film Editing the best predictor of Best Picture?”
All students of IS607 course have participated on this project from Mar 14th to Mar 29th.

![alt text](screen.PNG)

####2. Desired Outcomes
There is reasonable correlation between Best Picture and Best Film Editing. 
Or,
 There is reasonable correlation between Best Picture and other category awards. The current categories of Academy award are below.


```r
Current_category[[1]]
```

```
##  [1] "Best Picture: since 1928"                     
##  [2] "Best Directing: since 1928"                   
##  [3] "Best Actor in a Leading Role: since 1928"     
##  [4] "Best Actor in a Supporting Role: since 1936"  
##  [5] "Best Actress in a Leading Role: since 1928"   
##  [6] "Best Actress in a Supporting Role: since 1936"
##  [7] "Best Animated Feature: since 2001"            
##  [8] "Best Animated Short Film: since 1931"         
##  [9] "Best Cinematography: since 1928"              
## [10] "Best Costume Design: since 1948"              
## [11] "Best Documentary Feature: since 1943"         
## [12] "Best Documentary Short Subject: since 1941"   
## [13] "Best Film Editing: since 1934"                
## [14] "Best Foreign Language Film: since 1947"       
## [15] "Best Live Action Short Film: since 1931"      
## [16] "Best Makeup and Hairstyling: since 1981"      
## [17] "Best Original Score: since 1934"              
## [18] "Best Original Song: since 1934"               
## [19] "Best Production Design: since 1928"           
## [20] "Best Sound Editing: since 1963"               
## [21] "Best Sound Mixing: since 1930"                
## [22] "Best Visual Effects: since 1939"              
## [23] "Best Adapted Screenplay: since 1928"          
## [24] "Best Original Screenplay: since 1940"
```

####3. Assumptions
Any combinations of categories (sound mixing and film editing) do not affect the Best Picture award.

####4. Constraint
This is not to show causality between Best Picture and Best Film Editing (or some other one). Even if there would be correlation between the two, we cannot tell that nice film editing makes the movie worthy to be awarded Best Picture.

####5. Possible benefit 
Even with the constraint above, there would be a possibility of causality between the two awards(Best Picture and some other one). After we find any correlation, we can recommend movie producers to invest more on one category, for example, sound editing, in order to get Best Picture award.
![alt text](best.jpg)

####6. Risk
Since many members are working through online, there might exist problems of time, data management and communication.

####7. Management Strategy 
To reduce the risk above, we used diverse tools


 - Distributing works, Managing schedule: Trello
 
 - Verifying data quality, Removing duplicates: Github, PostgreSQL 
 
 - Communication: Trello and regular meeting online.


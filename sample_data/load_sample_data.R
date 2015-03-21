# Param Singh - IS607 - Project 3
# Script for accessing sample data - please note alternate methods available, this one works with base R

urlfile <-'https://raw.githubusercontent.com/srajeev1/607Project3/master/sample_data/academy_awards.csv'

# Update the destfile location to a directory of your choosing
download.file(urlfile, destfile = "sampleawardsdata.csv", method = "curl")

# Read from the directory
mydf <- read.csv("sampleawardsdata.csv")
head(mydf)

library(tidyr)
library(dplyr)
table(mydf$Category)

#new table only with Best Picture and Film Editing and separate Year to "year", "ord"
best <- rbind(mydf[grep("Film Editing",mydf$Category),], mydf[grep("Best Picture",mydf$Category),])
new <- best%>%
        separate(Year, c("year", "ord"), -7)
new$year <- gsub(' *', '' , new$year)  #erase white spaces



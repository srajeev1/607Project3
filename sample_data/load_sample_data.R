# Param Singh - IS607 - Project 3
# Script for accessing sample data - please note alternate methods available, this one works with base R

urlfile <-'https://raw.githubusercontent.com/srajeev1/607Project3/master/sample_data/academy_awards.csv'

# Update the destfile location to a directory of your choosing
download.file(urlfile, destfile = "sampleawardsdata.csv", method = "curl")

# Read from the directory
mydf <- read.csv("sampleawardsdata.csv")
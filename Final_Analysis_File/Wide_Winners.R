# This code is best run after Sehkar's contribution - Data_Tranform.R
# This will use the reshape package to create a wide-format dataframe where each year is represented as a row and each 
# column an award category. The cell values are the movie titles as character strings.

library(reshape)
awards_df <- read.csv("Awards_File.csv",stringsAsFactors=F)
awards_modified <- awards_df[,c(1,3,4,6)]
winners <- subset(awards_df, won == 1)
molten_winners <- melt.data.frame(winners,id.vars=c("year","category_name"),measure.vars="movie_name")
molten_winners <- molten_winners[,-3]
molten_winners[,3] <- as.character(molten_winners[,3])
wide_winners <- reshape(molten_winners,timevar="category_name",idvar="year",direction="wide")
award_categories <- unique(data.frame(category_id=awards_df$category_id,category_name=awards_df$category_name))
colnames(wide_winners) <- as.vector(c("year",as.character(award_categories$category_name)))
rownames(wide_winners) <- NULL
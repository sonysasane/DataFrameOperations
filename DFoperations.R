

stats <- read.csv("DemographicData.csv")
head(stats)
stats[,"Birth.rate"]
is.data.frame(stats[,"Birth.rate"])
stats[1:7,]
is.data.frame(stats[1:7,])
#aceessing random rows
stats[c(91,4,6,7),]
#aceessing random col
stats[,c("Birth.rate","Income.Group")]
is.data.frame(stats[,c("Birth.rate","Income.Group")])
#multiply colmns

stats$Birth.rate * stats$Internet.users
#adding columns to dataframe

stats$Mycal <- stats$Birth.rate * stats$Internet.users
head(stats)
stats$addi <- stats$Birth.rate + stats$Internet.users
head(stats)
#removing column
stats$Mycal <- NULL
head(stats)
stats$addi <- NULL
head(stats)
#recycling concept
stats$newCol <- 1:5
head(stats, n=10) #----recycling happens if length of vector not equal to records but recycling only happens if length of vector is multiple of record numbrs (195 is multiple of 5)
#what if l not eual to records
stats$newcol2 <- 1:6
#it does not accept
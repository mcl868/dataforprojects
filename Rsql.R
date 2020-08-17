tab<-read.csv(
         url("https://raw.githubusercontent.com/mcl868/dataforprojects/master/ArtifDataFrame.csv"),
     header = TRUE)


library(sqldf)
sqldf('SELECT age, gender FROM tab')


sqldf('SELECT age, gender FROM tab WHERE education = "high" ORDER BY gender')



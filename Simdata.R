age<-sample(c(18:64),200,TRUE)
gender<-sample(c("female","male"),200,TRUE)
education<-sample(c("lower","mid","high"),200,TRUE)
area<-sample(c("north","south","west","east"),200,TRUE)

y<-age+
   1*(gender=="male")+ 
   1*(education=="mid")+2*(education=="high")+
   1*(area=="north")+2*(area=="west")+3*(area=="east")+
   rnorm(200)
database<-data.frame("age"=age,"gender"=gender,"education"=education,"area"=area,"y"=y) 
rm(list=c("age","gender","education","area","y"))

write.csv(database,"~/GitHub/dataforprojects/ArtifDataFrame.csv", row.names = FALSE)
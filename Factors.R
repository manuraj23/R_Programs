#factors:It create clustor for unique value
#by default unordered factor is created;

(region1<-c("East","West","North","South","Central","East","North","North","West","North"))
#above is vector

#factor start from here
(region<-factor(c("East","West","North","South","Central","East","North","North","West","North")))
str(region)
summary(region)
region1[11]<-"Centre"
region1
region[11]<-"Centre"  #it will not work, but it will create a space for it. It can add new value if value is present in it
region

levels(region)<-c(levels(region),"Centre")
levels(region)
table(region)
region[11]<-"Centre"
region

#





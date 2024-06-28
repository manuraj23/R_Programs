liberary(dplyr)
States=read.csv(file.choose(),sep=',',header = T)
View(States)
summary(States)
is.na(States)
NA_Values<-View(States[!complete.cases(States),])


S1=States 
View(S1)
summary(S1)
str(S1)
View(S1[!complete.cases(S1),])

names(S1)  #gives column name of data frame

which(S1$State=="Tripura")

mean(S1$Literacy.Rate.,na.rm = T)  #calculates mean

S1[which(S1$State=="Tripura"),"Literacy.Rate."]=mean(S1$Literacy.Rate.,na.rm = T)
S1[which(S1$State=="Goa"),"Tree.Cover."]=mean(S1$Tree.Cover.,na.rm = T)
S1[which(S1$State=="Madhya Pradesh"),"Tree.Cover."]=mean(S1$Tree.Cover.,na.rm = T)
S1[which(S1$State=="Rajasthan"),"Tree.Cover."]=mean(S1$Tree.Cover.,na.rm = T)



#Imputing Na for Semi Mannual
S2<-States
View(S2[!complete.cases(S2),])
names(which(sapply(S2,anyNA)))

S2$Tree.Cover[is.na(S2$Tree.Cover)] = mean(S2$Tree.Cover,na.rm=T)
S2$Literacy.Rate.[is.na(S2$Literacy.Rate.)] = mean(S2$Literacy.Rate.,na.rm=T)
S2$Sex.Ratio[is.na(S2$Sex.Ratio)] = mean(S2$Sex.Ratio,na.rm=T)


#Automatically
S3<-States
for(i in 1:ncol(S3)){
S3[is.na(S3[,i]),i]=round(mean(S3[,i],na.rm=TRUE))
}
View(S3[!complete.cases(S3),])

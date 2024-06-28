View(airquality)
df<-as.data.frame(airquality)
View(df)
View(df[!complete.cases(df),]) 
df$Ozone[is.na(df$Ozone)]=mean(df$Ozone,na.rm = TRUE)
View(df)
df$Solar.R[is.na(df$Solar.R)]=mean(df$Solar.R,na.rm = TRUE)
View(df)
df$Wind[is.na(df$Wind)]=mean(df$Wind,na.rm = TRUE)
View(df)

# to do it automatically

df1<-as.data.frame(airquality)
View(df1[!complete.cases(df1),]) 
for(i in 1:ncol(df1)){
  df1[is.na(df1[,i]),i]=round(mean(df1[,i],na.rm = TRUE))
}
View(df1[!complete.cases(df1),]) 

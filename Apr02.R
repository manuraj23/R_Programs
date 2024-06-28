install.packages("tidyr",dep=T)
?tidyr
library(tidyr)
library(dplyr)
head(mtcars)
?spread
mt<-mtcars
View(mt)
mtNew<-gather(mt,New_Field,Field_value,mpg:carb)
View(mtNew)
mtNew$ID<-1:32
mtSpread<-spread(mtNew,New_Field,Field_value)
View(mtSpread)

mtNew1<-gather(mtcars,key,value,mpg:gear)
mtNew1
mtNew1$ID<-1:32
mtSpread1<-spread(mtNew1,key,value)
View(mtSpread1)

##Unite Function
set.seed(1)
date<-as.Date('2016-01-01')+0:14
date
hour<-sample(0:23,15)
hour
min<-sample(0:60,15)
min
second<-sample(0:60,15)
second
event<-sample(letters,15)
event
data<-data.frame(date,hour,min,second,event)
View(data)

dataNew<-data%>%unite(dateHour,date,hour,sep= ' ')%>%unite(dateTime,dateHour,event,sep="_")
View(dataNew)

data1<-dataNew%>%separate(dateTime,c('date','time'),sep=' ')%>%separate(time,c('hour','event'),sep="_")
View(data1)


df<-read.csv(file.choose()) 
new_df<-df%>%unite(CityState,city,state,sep=",")
View(new_df)
df1<-new_df%>%separate(CityState,c('City','State'),sep=",")
View(df1)

df2<-gather(df,BillType,Billamount,waterbill:gasbill)
View(df2)

df3<-spread(df2,gasbill,waterbill)

datasep<-separate(df,Date,c("Day","Month","Year"),sep="-")
datasep

dataunite<-unite(datasep,Date,c("Day","Month","Year"),sep="/")
dataunite

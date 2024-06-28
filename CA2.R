mtcars%>%select(mpg,cyl)%>%filter(cyl>5)
mtcars%>%filter(cyl>5)%>%select(mpg,am)
View(data_frame)
sqldf("Select * from data_frame")
sqldf("Select avg(emp_salary) from data_frame")
sqldf("Select avg(emp_salary) from data_frame where emp_dept==3")
sqldf("Select emp_dept,avg(emp_salary) from data_frame group by emp_dept")
install.packages('dplyr')

#load packagge
library(dplyr)   # or require(dplyr)
??dplyr
View(mtcars)
?mtcars

names(mtcars)
summary(mtcars)
select(mtcars,mpg,am)
filter(mtcars,cyl>5)

select(mtcars,-mpg,-am)

#use of pypesymbol
mtcars%>%select(mpg,cyl)%>%filter(cyl>5)
mtcars%>%filter(cyl>5)%>%select(mpg,am)
select(mtcars,starts_with("c"))

select(mtcars,starts_with("C"))   #not case sensitive

select(mtcars,ends_with("p"))%>%View
select(mtcars,contains("t"))
select(mtcars,contains("at"))

str(mtcars)

#  for changing datatype     mtcars$cyl<-as.num(mtcars@cyl)

#FILTER
filter(mtcars,am==0)%>%View
filter(mtcars,am==0,cyl==4)%>%View                  #we can put and operator as , or &
filter(mtcars,am==0 | cyl==4)%>%View                #we can put or operator as |


#piping is used to sequence the instruction
row.names(mtcars)
mtcar1<-mtcars
mtcar1<-mutate(mtcar1,carmodel=row.names(mtcar1))
View(mtcar1)
mtcar1<-mtcar1[,-13]
View(mtcar1)
row.names(mtcar1)<-NULL
View(mtcar1)
mtcar1<-mtcar1%>%mutate(mpg100=mpg*100)
View(mtcar1)


filter(mtcar1,am==0) %>% select(mtcar1,cyl,am,mpg)

#using %in% 
filter(mtcars,row.names(mtcars) %in% c('Mazda RX4','Merc 450SL'))%>%select(mpg,cyl)

df<-mtcars%>%filter(row.names(mtcars)%in%c('Mazda RX4','Merc 450SL'))%>%select(mpg,cyl)
View(df)

#USING %>%, select and Arrange KeyWord

a<-mtcars%>%select(am,disp,hp)%>%arrange(hp)
View(a)
b<-mtcars%>%select(am,disp,hp)%>%arrange(hp)%>%head()
View(b)
c<-mtcars%>%select(am,disp,hp)%>%arrange(desc(hp))
View(c)
d<-mtcars%>%select(am,disp,hp)%>%arrange(hp,desc(disp))
View(d)


#SUMMERISE FUNCTION
mtcars%>%summarise(avghp=mean(hp),min(hp),max(hp),total=n())

mtcars%>%summarise(avghp=mean(hp),min(hp),max(hp),total=n())%>%select(avghp,total)

mtcars%>%group_by(am)%>%summarise(avghp=mean(hp),min(hp),max(hp),total=n())




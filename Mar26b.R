install.packages('dplyr')

#load packagge
library(dplyr)   # or require(dplyr)
?dplyr


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

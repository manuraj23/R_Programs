# Date and Time
D1<-c('2019/11/19')
ANYDATE=as.POSIXct(D1,formet="%d/%m/%y")
ANYDATE
unclass(as.POSIXct(ANYDATE))
unlist(as.POSIXct(ANYDATE))
TODAY=Sys.time()
TODAY
unlist(unclass(as.POSIXlt(TODAY)))

D2=read.csv(file.choose())


{
  D2$OrderDate=as.POSIXct()
}












# Subsetting
View(mtcars)
head(mtcars)
tail(mtcars)

str(mtcars)
summary(mtcars)
nrow(mtcars)
ncol(mtcars)
View(mtcars)
mtcars[]
class(mtcars[,1])
class(mtcars[,1,drop=FALSE])
mtcars[1]
mtcars[,1]+mtcars[,2]
mtcars[1]+mtcars[2]

mtcars['am']
mtcars[,'am']
mtcars[c('am','mpg')]

# Subsetting and viewing data usingg conditions:
mtcars[which(mtcars$am==0),]
mtcars[which(mtcars$mpg>4),]

# SUBSET
# subset(Dataframe,Condition(selection of data),Columns(projection of data))
subset(mtcars,am==0)
subset(mtcars,gear>3)
subset(mtcars,cyl>4)
subset(mtcars,row.names(mtcars)%in% c("Mazda RX4 Wag","Valiant"))

# projection
subset(mtcars,select = mpg)
subset(mtcars,select = am)
subset(mtcars,select = 3)
subset(mtcars,select = c(1))+subset(mtcars,select = c(2))
# Selection and projection
subset(mtcars,am==0,select = c(hp,gear))



#*****************************************Matrix Creation******************************

v1<-c(10,11,12,13,14,15)
v2<-c(16,17,18,19,20,21)
mat<-matrix(c(v1,v2), nrow=2,ncol=6,byrow=TRUE)
mat
mat1<-mat
mat1
colnames(mat1)<-c("one","two","three","four","five","six")
mat1
rownames(mat1)<-c("First","Second")
dimnames(mat1)
#for adding column in matrix
mat2<-mat1
mat2<-cbind(mat1,c(101,102))
mat2

#for adding row in matrix
mat2<-rbind(mat2,c(1,2,3,4,5,6,7))
mat2
dimnames(mat2)<-list(c(rownames(mat1)[-3],"Third"),c(colnames(mat1)[-7],"Sevem"))
mat2
mat3<-matrix(1:10,nrow=2,ncol=5,byrow=TRUE)
mat3
mat4<-t(mat3)
mat4
#Matrix multiplication symbol %*%;

#******************************************DataFrames****************************************
df<-data.frame(col1=11:20,
               col2=21:30,
               col3=31:40) #no of data in each column shoud be same or shold be in integral multiple;
df
df<-data.frame(col1=11:15,
               col2=21:30,
               col3=31:50)
#double quotes can be used or not for declaring column names
df<-data.frame("col1"=11:15,
               col2=21:30,
               col3=31:50)
df[3,]
df[3,all()]
df$col1 #another way to aceess the value of dataframes
df<-cbind(df,col4=41:60)
df

#**********************************Factor*************************************
(region1<-c("East","West","North","South","Central","East","North","North","West","North"))
#above is vector
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

#***********************Conditional Statement*******************************
val<-1
if(val>0){
  print("Hello")
} else {
  print("Hi")
}
n1=10
n2=10
opr<-readline(prompt="Please enter opr:(1-ADD, 2-SUB, 3-MUL, 4-DIV, 5-EXPO, 7-INT DIV, 8-REMAINDER)")
opr
switch(opr,
       "1"=cat("Addition is: ",n1+n2),
       "2"=cat("Sub is: ",n1-n2),
       "3"=cat("Multiplication is: ",n1*n2),
       "4"=cat("Division is: ",n1/n2),
       "5"=cat("Exponential is: ",n1^n2),
       "7"=cat("Integer Division is: ",n1%/%n2),
       "8"=cat("Remainder is: ",n1%%n2),
       print("Wrong Operator"))
 #*******************************Function******************************************************
q1=function(a=6,b=0){
  print(a)
  print(paste("b is: ",b))
  z=a+b;
  print(z)
}
q1()
q1(b=10)
q1(10)
q1(b=5,a=10)


#***************19marchremaining***********************
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




#*                        File Read     
df<-read.csv("C:/Users/manur/Downloads/STATES.csv")
View(df)

getwd() #give present location where software is working
df1<-("STATES1.csv")
setwd("C:/Users/manur/OneDrive/Documents")
States<-read.csv(file.choose())
View(States)
test_df<-(read.csv(file.choose(),sep='#'))
View(test_df)
summary(States)
str(States)
is.na(States)  #prefered for looping/iterative Statements
!complete.cases(States)
States[!complete.cases(States),] #give all row where na vlaue is there
S1=States
nrow(S1)

S1[!complete.cases(S1),]
nrow(S1[!complete.cases(S1),])

S1<-na.omit(S1)
nrow(S1)
S1[!complete.cases(S1),]
nrow(S1[!complete.cases(S1),])
 

#***************************Sqldf***********************
library(sqldf)
data_frame=data.frame(emp_id=1:5,
                      emp_name=c("Manu","Raj","Nishant","Ananya","Khushi"),
                      emp_salary=c(5000,4000,3000,2000,1000),
                      emp_job=c("Manager","Manager","Analyst","Developer","Analyst"),
                      emp_dept=c(3,3,2,1,2))
View(data_frame)
sqldf("Select * from data_frame")
sqldf("Select avg(emp_salary) from data_frame")
sqldf("Select avg(emp_salary) from data_frame where emp_dept==3")
sqldf("Select emp_dept,avg(emp_salary) from data_frame group by emp_dept")



#********************apply**************
#in apply we can pass (an array or matrix, margin, Function)
#margin can be 1 or 2 : 1 means row wise,   2 means columns
# function can be  user defined or pre-defined


mtcar1<-mutate(mtcar1,carmodel=row.names(mtcar1))

#tidyr->>gather,spread,unite,seperate


#grammer of graphics


# **********************GGPLOT2 Grammer of Graphics********************
# *                                                                   *  
# *  Components of graph:                                             *     
# *  1 DATA             :     The dataset                             *        
# *  2 AESTHETICS       :     The metric onto which we plot the data  *          
# *  3 GEOMETRY         :     Visual elements to plot the data        *   
# *  4 FACET            :     Group by which we divide the data       *         
# *********************************************************************      

install.packages("ggplot2",dep=T)
library(ggplot2)
ggplot(data = iris,aes(x=Sepal.Length,y=Petal.Length))+geom_point()
ggplot(data = iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+geom_point()
ggplot(data = iris,aes(x=Sepal.Length,y=Petal.Length,col=Species,shape=Species))+geom_point()


#Histogram
ggplot(data = iris,aes(x=Sepal.Length))+geom_histogram(bins=10,fill="red",col="black")+ggtitle("Histogram")


#boxplot
ggplot(data=iris,aes(x=Species,y=Sepal.Length,fill=Species))+geom_boxplot()

#barplot()
ggplot(data=iris,aes(x=Petal.Length,fill=Species))+geom_bar()

#error
ggplot(data=iris,aes(x=Species,y=Sepal.Length))+geom_bar()
#Solution
ggplot(data=iris,aes(x=Species,y=Sepal.Length,width=.5))+geom_bar(stat = 'identity',col='blue')

#Density Plot:
ggplot(data = iris,aes(x=Sepal.Length))+
  labs(x="Sepal Length",y="Frequency of Sepal Length")+
  geom_density(fill='red',col='blue',aplha=0.2)+
  ggtitle("Density Plot")

ggplot(data = iris,aes(x=Sepal.Length,fill=Species))+
  labs(x="Sepal Length",y="Frequency of Sepal Length")+
  geom_density(col="red",alpha=0.2)+
  ggtitle("Density Plot")

#pie chart

data=as.data.frame(table(iris$Species))

ggplot(data,aes(x="",y=Freq,fill=Var1))+geom_bar(stat = 'identity')+
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        plot.title = element_text(hjust = 0.5))+
  labs(title = "Pie Chart")+
  coord_polar(theta = "y",start=0)


#Bubble Plot
ggplot(mtcars,aes(x=mpg,y=disp,size=cyl))+geom_point()



































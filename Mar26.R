#SAPPLY  --return a simlified output   output->vector, list or matrix
color.list<-list(color1=1:10,
                 color2=26:35,
                 color3=41:50,
                 color3=56:65)

color.list

lapply(color.list,max)
class(lapply(color.list,max))

color.frame<-data.frame(color1=1:10,
                        color2=26:35,
                        color3=41:50,
                        color3=56:65)
color.frame

lapply(color.frame,mean)


sapply(color.frame,mean,simplify = F)

sapply(color.frame, mean)
?sapply

cal_function<-function(x){
  x*x
}

#Named Vector

vec1<-c(first=2,second=4,third=6,forth=8)
vec1

sapply(vec1,cal_function)

sapply(vec1,function(x) x*x)

#TAPPLY
S
?tapply

Test1<-c(10,20,30,40,50,60,70,80,90)
length(Test1)
section<-c("A","B","C","A","B","C","A","B","C")

tapply(Test1,section,sum)

tapply(iris$Sepal.Length,iris$Species,max)
tapply(iris$Sepal.Length,iris$Species,max,na.rm=T)
tapply(iris[,1],iris[,5],mean)
stu_marks=c(55,99,11,77,33,44,66,22,88)


#for  data frame
Test2<-c(40,50,60,70,80,90,10,20,30)
stu_id<-101:109
stu.df=data.frame(Student_Id=stu_id,Marks=stu_marks,Eng=Test1,History=Test2,Section=section)
stu.df
tapply(stu.df$Eng, stu.df$Section, mean)

#for list






#mapply Multivariate version of sapply

x<-1:10
y<-11:20

z<-21:30
t<-5:10   #length is not same of it will repeat the valye
mapply(sum,x,y,z,t)

mapply(sum,Test1,Test2)

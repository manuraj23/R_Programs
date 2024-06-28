data_pvc<-read.csv(file.choose(),row.names = 1)  # by default row names are not defined
View(data_pvc)
class(data_pvc)
mat_pvc<-as.matrix(data_pvc)
View(mat_pvc)
class(mat_pvc)
str(mat_pvc)


#To calculate max element of each row
max(mat_pvc[1,])
max(mat_pvc[1:8,])

#we can use a loop
for (i in 1:nrow(data_pvc)){
  cal<-mat_pvc[i,]
  cal_max<-max(cal)
  print(cal_max)
}


for (i in 1:nrow(data_pvc)){
  print(max(mat_pvc[i,]))
}

#in apply we can pass (an array or matrix, margin, Function)
#margin can be 1 or 2 : 1 means row wise,   2 means columns
# function can be  user defined or pre-defined

#To calculate max row wise
apply(mat_pvc,1,max)

#To calculate max column wise
apply(mat_pvc,2,max)
apply(mat_pvc,2,sum)

mat_pvc1<-mat_pvc
mat_pvc1[5,2]<-NA
mat_pvc1


apply(mat_pvc1,1,sum)
apply(mat_pvc1,1,sum,na.rm=T)

apply(mat_pvc1,2,sum)
apply(mat_pvc1,2,sum,na.rm=T)

str(iris)
View(iris)

#apply(iris, 1, mean,na.rm=T)
#apply(iris,2,maen,na.rm=T)


apply(iris[,-5],1,mean)

apply(iris,2,maen)
apply(iris[-5,],2,mean)

per<-function(x){
  x/100
}
?apply
apply(mat_pvc,1,per)
apply(mat_pvc,2,per)

apply(mat_pvc,1,per,simplify = FALSE)
apply(mat_pvc,2,per,simplify = FALSE)

?apply()
?lapply()

#list is a sequentiaal structure

#lapply return list as a function
#lapply(x,Fun)
#x is vector(atomic or vector)


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

lapply(color.list,mean)


str.vec<-c("blue","green","yellow","red")

lapply(str.vec, toupper)
lapply(str.vec, nchar)

apply(str.vec, toupper)
apply(str.vec, nchar)

#data.gov.in
#uci machine learning archive
#kaggle
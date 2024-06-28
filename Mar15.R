Function_name<-function(arguements){body}
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

#function
addsum<-function(x,...){
  args<-list(...)
  for(a in args) x<-x+a
  print(x)
}

addsum(0,1,2,3,4,5)  # 0 is for x

addsum1<-function(...){
  args<-list(...)
  x=0;
  for(a in args) x<-x+a
  print(x)
}
addsum1(1,2,3,4,5)

norm <- function(x) sqrt(x%*%x)
norm(1:4)




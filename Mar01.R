ran<-sample(0:200,150)
ran
ran1<-sample(0:200,500)  #error  cannot take a sample larger than the population when 'replace = FALSE'
ran1<-sample(0:200,500,replace=T)  #by default replace value is false
ran1
ran2<-sample(0:4,100,replace=T,prob=c(.1,.2,.3,.2,.2))
ran2
ran3<-sample(0:4,10,replace=T)
ran3
#set.seed(32457) is name to cache memory
set.seed(245)
(ran4<-sample(0:4,10,replace=T))




#Conditional Statement

if (test_exp){
  statement
} else if {
  statement
}else{
  statement
}

#example
x=10
if(x>0){
  print("Positive number")
} else{
  print("Negative Number")
}

y='6';
if(is.character(y)){
  print("Character")
}else if(x>0){
  print("Positive number")
} else{
  print("Negative Number")
}

z=c("How","When","What","LPU")
if ("How" %in% z){
  print("How is there")
} else {
  print("Not found");
}


a=1
switch(a,sum(4,5),"3","Hello")
?switch

switch(a,"3"=sum(4,5),"1"="3","2"="Hello")
?switch

n1<-30;
n2<-as.integer(readline("Enter any numeric value: "))
n2
n1+n2 #give error

as.integer(n2);
n1+n2

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










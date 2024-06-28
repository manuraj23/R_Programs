x<-c(7,5,9,1,35,2,5,2,54,2,45,6,5,265,257)
x[c(T,F)]
x[c(0,1,0,1,0,1,0,0,1,1)]

#vector manipulation
v1<-c(7,8,9,1,5,6,12)
v2<-c(1,2,3,4,5,6,56)

v1[c(1,5)]<-c(25,96)
v1

addvec<-v1+v2  #length should be of same of length or smaller length vector shold be multiple of longer one
subvec<-v1-v2
mulvec<-v1*v2
divvec<-v1/v2

addvec
subvec
mulvec
divvec

vec1<-c(1,2)
vec2<-c(0,0)
divvec1<-vec1/vec2
divvec1

(divvec<-v1/v2) #putting parenthesis directly print the value
(modvec<-v2%%v1)
(quovec<-v2%/%v1)

(sortvec<-sort(v1, decreasing = T))
(sortvec2<-sort(v2))  #by defalut data will be sorted in ascending order

vec5<-c("Red","Purple","Green","Orange","Indigo")
vec5
(sortvev5<-sort(vec5))

vec6


?array
help("array")

(a1<-array(c(10,20,30,4,0,50,60,47),dim=c(3,4,3)))
(a3<-array(c(v1,v2),dim=c(3,4,3),dimnames=list(c("R1","R2","R3"),c("C1","C2","C3","C4"),c("M1","M2","M3"))))
a2[3,3,2]


s2[]


letters  #it print form a to z
dim(as.array(letters))   #give length of letters
class(letters)


s<-as.array(letters)   #as.arrary used to type to vector
s
class(s)

?as.array

(a2<-array(data=1:15,dim=c(3,4,2)))
a2[3,4,2]
a2[3]
a2[3,4,]
a2[1,,]

v3<-c(10,20,30,40,50)
v4<-c(60,70,80,90,100,110,120,130,140,150)

a4<-array(c(v3,v4),dim=c(3,4,3))

#matrix

(mat<-matrix(1:12,nrow=3,ncol=4))   # by default it will get arranged column wise
(mat1<-matrix(1:12,nrow=3,ncol=4,byrow=TRUE))  #default byrow is false
(mat2<-matrix(c(1:20,0),nrow=3))
(mat3<-matrix(LETTERS,nrow=2,ncol=13))

rm(aobj) #used to remove object,variable
rm(a,a1,a2) #used to remove multiple object,variable
rm(list = ls())#to delete all data object






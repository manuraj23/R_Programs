(v1<-c(10,20,30,40,50))
(v2<-c(60,70,80,90,100))
(mat<-matrix(c(v1,v2),nrow=2,ncol=5,byrow=TRUE))
class(mat)
mat[1,3]
mat[1,]
mat[,2]
mat[c(1,2),]
typeof(mat)
attributes(mat)
dim(mat)
mat1 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(c("R1", "R2", "R3"), NULL))

mat1
colnames(mat1)<-c("C1","C2","C3")  
mat1
rownames(mat1)<-c("R1","R2","R3")
mat1
attributes(mat1)
dimnames(mat1)

#add something in the matrix
mat2<-mat1
mat2
mat2<-cbind(c(11,22,33))
mat2
mat1
mat1<-cbind(mat1,c(11,22,33))
mat1

mat1<-rbind(mat1,c(12,22,32,42))

mat1
dimnames(mat1)<-list(c(rownames(mat1)[-4],"R4"),c(colnames(mat1)[-4],"C4"))
mat1
# update only rowname
# rownames(mat1)<-c(rownames(mat1)[-5],"Newname")

#create a matrix without matrix function
m1<-cbind(c(10,2,30),c(52,12,35))
m2<-rbind(c(10,20,30),c(40,50,60))
m1
m2

(m3<-matrix(1:10,ncol=2,nrow=5))
(m4<-matrix(11:20,ncol=2,nrow=5))
m3+m4
(m5<-t(m3))    #t() used to transpose of matrix
m6<-m3%*%m5
m3
m5
m6
m5%*%m3  #we can use * for multiplication ,use %*%



# data frame  collection of heterogeneous data objects

#creating data frame

(x <- data.frame("SN" = 1:2, "Age" = c(21,15),"Name"= c("Adi","Nik")))

(x <- data.frame("SN" = 1:2, "Age" = c(21,15,65),"Name"= c("Adi","Nik"))) # arguments imply differing number of rows: 2, 3

# no of data should be equal or every data object should be multiple of each other

(x <- data.frame("SN" = 1:2, "Age" = c(21,15,65,1),"Name"= c("Adi","Nik")))
(x <- data.frame("SN" = 1:6, "Age" = c(21,15,65,1),"Name"= c("Adi","Nik")))

(x <- data.frame("SN" = 1:2, "Age" = c(19,20,65,1),"Name"= c("Adi","Nik")))

(x <- data.frame("SN" = 1:4, "Age" = c(19,20,21,18),"Name"= c("Adi","Nik","Anu","Nikita")))

# double quotes can be or cant be used as these are objects of data frames but we have space in name of data object then we have to use double quotes
(x <- data.frame(SN = 1:4, Age = c(19,20,21,18),"Name"= c("Adi","Nik","Anu","Nitika")))

#unexpected symbol in "(x <- data.frame(S No"
(x <- data.frame(S No = 1:4, "Age" = c(19,20,21,18),"Name"= c("Adi","Nik","Anu","Nitika")))
#variable name having space between its name should must be stored in double quotes

# specila charactes between the variable is converted to dot only while showing 
(x <- data.frame("S    No" = 1:4, "Age" = c(19,20,21,18),"Name"= c("Adi","Nik","Anu","Nitika")))
(x <- data.frame("S No" = 1:4, Age = c(19,20,21,18),Name= c("Adi","Nik","Anu","Nitika")))


x
# to get the values 
x[2,3]
x[3,2]
x[3,]
x[3,all()]
class(x[3,])

(x[,2])
class(x[,2])

(x[,c(2,3)])
class((x[,c(2,3)]))

# lenght only gives the length of one dimensional data so it is only giving the details of coiumns
length(x)
# gives dimensions of x
dim(x)

dimnames(x)

# gives the structure of the data.frame
str(x)

# another way to access the data is using "$"
x$Name
x$S.No
x$Age

x$Name[3]   #both are same below one also
x[3,3]

names(x)
x
nrow(x)
ncol(x)


summary(x)


# add new values in data frame


x <- cbind(x,"Section" = c("KM075","KM076","KM077","KM078"))  # used to add new column
x
summary(x)

x<-rbind(x,c(5,21,"Amit","KM079"))  # used to add new row
str(x)
x

# to see the in built present datasets
data()

airquality
View(airquality)  # used to see in tabular form or a grid view


# to see the description of the data set
?airquality

df <- airquality
str(df)
summary(df)

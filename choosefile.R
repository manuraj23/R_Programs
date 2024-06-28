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

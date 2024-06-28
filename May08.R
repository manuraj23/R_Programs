# =================================================================
#                           Taking Input
# =================================================================

n2<-as.integer(readline("Enter any numeric value: "))

# =================================================================
#                           Function
# =================================================================
function1=function(a=10,b=20){
  print(a+b)
}
function1()
function1(5)
function1(,5)
function1(5,5)
printseries=function(a=10){
  for (i in (1:5)){
    for (j in (1:5)){
      if((i+j-1)%%5==0){
        cat(5," ")
      } else {
        cat((i+j-1)%%5, " ")
      }
    }
    cat("\n")
  }
}
printseries()

# =================================================================
#                           Fibonacci
# =================================================================

fibonacci=function(n=1){
  if(n==1 || n==2){
    print (1)
  } else{
    a=1
    b=1
    for (i in (3:n)){
      temp=a+b
      a=b;
      b=temp;
    }
    cat (b," ")
  }
}
fibonacci(5)

# =================================================================
#                           Factorial
# =================================================================

factorial=function(n=0){
  if(n==0||n==1){
    print(1)
  } else {
    fact=1;
    for(i in 1:n){
      fact=fact*i;
    }
    cat(fact," ");
  }
}
factorial(5)
# =================================================================
#                  tidyr
# =================================================================
library(tidyr)
#spread,gather,unite,seperate
mt<-mtcars
View(mt)
mtNew<-gather(mt,New_Field,Field_value,mpg:carb)
View(mtNew)
mtNew$ID<-1:32
mtSpread<-spread(mtNew,New_Field,Field_value)
View(mtSpread)
mtNew1<-gather(mtcars,key,value,mpg:gear)
mtNew1
mtNew1$ID<-1:32
mtSpread1<-spread(mtNew1,key,value)
View(mtSpread1)

##Unite Function
set.seed(1)
date<-as.Date('2016-01-01')+0:14
date
hour<-sample(0:23,15)
hour
min<-sample(0:60,15)
min
second<-sample(0:60,15)
second
event<-sample(letters,15)
event
data<-data.frame(date,hour,min,second,event)
View(data)

dataNew<-data%>%unite(dateHour,date,hour,sep= ' ')%>%unite(dateTime,dateHour,event,sep="_")
View(dataNew)

data1<-dataNew%>%separate(dateTime,c('date','time'),sep=' ')%>%separate(time,c('hour','event'),sep="_")
View(data1)




# =================================================================
#                  dplyr and Sqldf and plotly
# =================================================================
library(sqldf)
library(dplyr)
library(ggplot2)
library(plotly)
View(ChickWeight)
df<-as.data.frame(sqldf("select avg(`Weight`),Diet from ChickWeight group by Diet"))
df
df<-as.data.frame(ChickWeight %>%
  group_by(Diet) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE)))
df
ggplot(data=df,aes(y=`mean_weight`,x=`Diet`,width=0.5))+geom_bar(stat = 'identity',fill='red',col='blue')
plot(df$Diet, df$mean_weight, xlab = "Diet", ylab = "Mean Weight", main = "Comparison", col = "red", pch = 16)

plot <- plot_ly(data = df, x = ~Diet, y = ~mean_weight, type = "bar", 
                marker = list(color = "green", line = list(color = "blue", width = 1)))

# Customize layout
layout <- list(title = "Mean Weight by Diet",
               xaxis = list(title = "Diet"),
               yaxis = list(title = "Mean Weight"))

# Display the plot
plot <- plot %>% layout(layout)
plot


# Scatter plot
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



# =================================================================
#                  Dounught
# =================================================================

data=as.data.frame(table(iris$Species))
library(ggplot2)
pie_chartr<-ggplot(data,aes(x="",y=Freq,fill=Var1))+geom_bar(stat = 'identity')+
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        plot.title = element_text(hjust = 0.5))+
  labs(title = "Pie Chart")+
  coord_polar(theta = "y",start=0)
pie_chartr


data <- data.frame(
  Category = c("A", "B", "C", "D"),
  Value = c(20, 30, 40, 10)
)

pie_chart <- ggplot(data, aes(x = "", y = Value, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(label = paste(Category, round(Value / sum(Value) * 100), "%")), position = position_stack(vjust = 0.5)) +
  scale_fill_brewer(palette = "Dark2") + 
  theme_void()

pie_chart
pie_chart
donut_chart<-pie_chart+geom_bar(data = data,aes(x="",y=Value),
                                stat="identity",
                                width = 0.5,fill="white")+
  geom_text(data=data,aes(label=paste(Category,Value,"%")))
donut_chart

data$fraction=data$Value/sum(data$Value)
data$fraction
# Compute cummulative value
data$ymax=cumsum(data$fraction)
data
# cummulative runnintoString.default

data$ymin=c(0,head(data$ymax,n=-1))
data
ggplot(data,aes(ymax=ymax,ymin=ymin,xmax=4,xmin=3,fill=Category))+geom_rect()

data
ggplot(data,aes(ymax=ymax,ymin=ymin,xmax=4,xmin=3,fill=Category))+geom_rect()+coord_polar(theta = "y")



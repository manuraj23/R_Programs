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

ggplot(data = iris,aes(x=Sepal.Length,y=Petal.Length))+geom_line()
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











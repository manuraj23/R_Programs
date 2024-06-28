data=as.data.frame(table(iris$Species))
library(ggplot2)
pie_chartr<-ggplot(data,aes(x="",y=Freq,fill=Var1))+geom_bar(stat = 'identity')+
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        plot.title = element_text(hjust = 0.5))+
  labs(title = "Pie Chart")+
  coord_polar(theta = "y",start=0)


library(ggplot2)

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



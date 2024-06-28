install.packages("sqldf")
library(sqldf)
data_frame=data.frame(emp_id=1:5,
                      emp_name=c("Manu","Raj","Nishant","Ananya","Khushi"),
                      emp_salary=c(5000,4000,3000,2000,1000),
                      emp_job=c("Manager","Manager","Analyst","Developer","Analyst"),
                      emp_dept=c(3,3,2,1,2))
View(data_frame)
sqldf("Select * from data_frame")
sqldf("Select avg(emp_salary) from data_frame")
sqldf("Select avg(emp_salary) from data_frame where emp_dept==3")
sqldf("Select emp_dept,avg(emp_salary) from data_frame group by emp_dept")

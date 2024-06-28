 install.packages("sqldf")
library('sqldf')

data("UCBAdmissions")
View(UCBAdmissions)
str(UCBAdmissions)

summary(UCBAdmissions)


# must be a data frame
ucb <- as.data.frame(UCBAdmissions)

str(ucb)

sqldf("SELECT * from ucb")

#return Female student admission result

sqldf("select * from ucb where Gender = 'Female'")



# return the admoitted students for female candidates
sqldf("select * from ucb where Admit = 'Admitted' and gender = 'Female'")


# order admissions



sqldf("select * from ucb where Admit = 'Admitted' order by Freq DESC")



# same querry using dplyr 
library('dplyr')
ucb %>% filter(Admit=='Admitted') %>% arrange(desc(Freq))



sqldf("select distinct Dept from ucb")
sqldf("select dept, sum(freq) from ucb group by dept")

sqldf("select sum(freq) from ucb")


# Aggregate Queries
# total admitted students

sqldf("select admit, sum(freq) from ucb where gender='Male' group by admit")

sqldf("select admit, sum(freq) from ucb where admit='Admitted' group by admit")


sqldf("select admit, sum(freq) from ucb  group by admit")







# admitted students in department e
sqldf("select dept, sum(freq) from ucb where admit='Admitted' and dept='E'")

# department wis etotal admitted students
sqldf("select dept, sum(freq) from ucb where admit='Admitted'group by dept")

# department wise total rejected students
# total rejected students
sqldf("select sum(freq) from ucb where admit='Rejected' ")

# return total admitted males
sqldf("select sum(freq) as total_dudes from ucb where admit='Admmitted' AND gender='Male' ")


# return total rejected females
sqldf("select sum(freq) as total_ladies from ucb where admit='Rejected' AND gender='Female' ")

# average no of admitted student by department(usually mean)

sqldf("select Dept,avg(freq) as average_admitted from ucb where admit='Admmitted' group by Dept ")



# create another datatable, named majors

majors <- data.frame(major=c("math","biology","engineering","computer science","history","architecture"),
                     Dept=c(LETTERS[1:5],"Others"),
                     Faculty=round(runif(6,min=10,max=30)))
# Date:23/204/2024
View(majors)
# join key:
sqldf("select * from ucb inner join majors on ucb.Dept=majors.Dept")

# left joiN
sqldf("select * from ucb left join majors on ucb.Dept=majors.Dept")

# Right join
sqldf("select * from ucb right join majors on ucb.Dept=majors.Dept")

# Wildcard 
sqldf("select * from ucb where Freq between 10 and 100")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Freq between 10 and 100")
sqldf("select * from ucb where Gender Like '_female'")

sqldf("select * from ucb where Gender NOT Like 'M_L_'")




library(dplyr)
library(writexl)

preprocess <- function(data, region_data) {
  data <- subset(data, Season == 'Summer')
  data <- merge(data, region_data, by = 'NOC', all.x = TRUE)
  data <- data[!duplicated(data), ]
  data <- data %>%
    mutate(
      Gold = as.integer(Medal == 'Gold'),
      Silver = as.integer(Medal == 'Silver'),
      Bronze = as.integer(Medal == 'Bronze')
    ) %>%
    select(-Medal) 
  return(data)
}

#data_pvc<-read.csv(file.choose())

df <- read.csv(file.choose())
region_df <- read.csv(file.choose())
df <- preprocess(df, region_df)
View(df)
write_xlsx(df, "output_file.xlsx")

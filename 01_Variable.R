df <- datasets::airquality
View(df)


df %>% select("Ozone", "Solar.R" , "Wind") -> Newdf

library(dplyr)

install.packages("dplyr")


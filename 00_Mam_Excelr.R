#Read the csv file

df <- datasets::airquality
View(df)


####Top 10 rows and last 10 rows

head(df)
head(df,1)
tail(df)
tail(df,25)

###########Summary of the data#########

summary(df)

df$Ozone
Ozone <- df$Ozone
summary(df$Ozone)
attach(df)
Month
Ozone

###########DATA VISUALIZATION IN R##########
#Scatter plot

plot(x = Ozone, y = Temp)

plot(Ozone,Temp, xlab = 'Ozone Levels',ylab = 'Temp Values',
     main = 'Scatter Plot Between Ozone and Temp',
     col = 'green',pch= 20)

#Horizontal bar plot
unique(Month)
barplot(Month)

fre <- table(Month)
fre
barplot(fre,col = 'darkred')

#Histogram
hist(Ozone,col="purple")
hist(Temp)


##Single box plot and stats
boxplot(Ozone, col = 'orange')
boxplot(Temp, col = 'orange')


#skewness

skewness(Ozone)

install.packages('moments')

library(moments)

skewness(Wind)

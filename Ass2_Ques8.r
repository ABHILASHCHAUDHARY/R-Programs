#Question 8
install.packages("pastecs")
library(pastecs)
var_csv_data = read.csv("C:/Users/DELL/Downloads/Births_dataset.csv", header = TRUE)
var_df=data.frame(var_csv_data)

var_df$date <- as.Date(var_df$date)

#finding central tendency using mean and median
print(summary(var_df))

var_births=data.matrix(var_df$births)

plot(density(var_births), type='l', col='red', main='births')

var_year=data.matrix(var_df$year)

plot(density(var_year), type='l', col='red', main='year')

var_day_of_year=data.matrix(var_df$day_of_year)


plot(var_day_of_year, var_births,
    main='Birth vs Day of years',
     xlab='Days',
     ylab='births',
     pch=20)

#finding measure of dispersion
options(scipen=999)
print(stat.desc(var_df))

#plots 
plot(var_births)

# checking the box plots
boxplot(var_births, col = 'red', main='Births')
boxplot(var_year, col = 'green', main='Years')
boxplot(var_day_of_year, col = 'blue', main='Day of years')


var_values=subset(var_df, select = -births)
plot(var_values, main='scatter plot all')

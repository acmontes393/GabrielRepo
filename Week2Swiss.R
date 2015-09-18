##Lecture 2 - 18.09.2015
##List preloaded datasets
data()
##Load Swiss dataset
data(swiss)
##Create a function for the mean of x (x is not yet specified)
fun_mean<-function(x){sum(x)/length(x)}
##Define what x is and run the function you just created
fun_mean(x=swiss$Examination)
##Run a histogram. For that we indicate the dataset
##... and we use the $ sign to select our variable of interest
hist(swiss$Examination)
##Mean
mean(swiss$Examination)
##If you have missing values you have to remove them as follows
mean(swiss$Examination, na.rm=TRUE)
##Generate Standard Error function using the standard deviation
sd_error <- function(x) {
  sd(x) / sqrt(length(x))
}
##Indicate that sd_error function refers to variable Examination
sd_error(swiss$Examination)
##Assign variables you are gonna be using repeatedly to functions
meanexamination<-mean(swiss$Examination)
data(mdeaths)
data("AirPassengers")
summary(AirPassengers)
swiss
hist(swiss$Catholic)
plot(swiss$Catholic,swiss$Fertility)
cor.test(swiss$Catholic, swiss$Fertility)
density(swiss$Catholic)
hist(swiss$Catholic,breaks=100)
library(ggplot2)
##Do a plot of Catholic and Fertility
plot1<-ggplot(swiss, aes(Catholic,Fertility))+geom_point() + geom_smooth() + theme_bw()
plot1
#Create a function 
sub_cath <- function(x){
  x[x$Catholic>75,]
}
catholic <- sub_cath(swiss)
mean(sub_cath)
summary(sub_cath)

print("hello world")

#End of file

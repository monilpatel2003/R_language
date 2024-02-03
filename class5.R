#Class 5 - Jan 25, 2024
install.packages("swirl")
install("swirl")
library("swirl")

data(iris)
str(iris)
head(iris)
head(iris,8)
tail(iris)
dim(iris)


colnames(iris)
spec = iris$Species
str(spec)


table(spec)
attach(iris)


x = iris$Petal.Length
y = iris$Sepal.Length

plot(x,y, pch = 16, xlab = "Petal Length", ylab = "Sepal Length", main = "Iris Sepal Length vs Petal Length", col = iris$Species)

legend("topleft", legend = unique(iris$Species), fill = unique(iris$Species), bty = 'n')

data("airquality")
air = airquality
View(air)
head(air)
str(air)


install.packages("dplyr")
library(dplyr)

unique(air$Month)
months = recode_factor(air$Month, '5' = 'May', '6' = 'June', '7' = "July", '8' = "August", '9' = "September")
months

boxplot(Solar.R~months, data = air, col = topo.colors(length(unique(months))))
?topo.colors
?recode_factor

boxplot(Solar.R~months, data = air, horizontal = T, col= c("purple","blue","green","yellow","red"))
legend("topright",legend = c('May','June','July','August','September'), fill = c('purple','blue','green','yellow','red'))

mean(air$Solar.R)
mean(air$Solar.R, na.rm = T)

boxplot(Solar.R ~ months, data = air, col = topo.colors(length(unique(months))))
abline(h = mean(air$Solar.R, na.rm = T), col = 'red', lty = "dashed", lwd = 2)

?abline
?plot

data(mtcars)
str(mtcars)
head(mtcars)

counts = table(mtcars$cyl)
counts

counts = as.vector(counts)
counts

?as.vector

xx <- barplot(counts, main = "Car Distribution by Cylinders", xlab = "Number of Cylinder",ylim = c(0, max(counts)+3),col = "deeppink")

text(x = xx, y = counts+1, label = as.character(counts), cex = 1.2, col = "darkblue")

#stacked bar
counts = table(mtcars$vs, mtcars$cyl)

barplot(counts, main = "Car Distribution by Cylinders and VS(v-shaped engine)"
              , xlab = "Number of Cylinders",col = c("darkblue","deeppink")
              , xlim = c(0,4.5),
                legend = rownames(counts))

#Grouped barplot
counts <- table(mtcars$vs, mtcars$cyl)
barplot(counts, main = "Car Distribution by Cylinder and VS",xlab = "Number of Cylinders", col = c("darkblue","deeppink"), legend = rownames(counts),besides = T)

#Histogram
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 12, col = "red")

x = mtcars$mpg
hist(x, freq = F, col = "red", xlab = "Miles per gallon", main = "Histrogram with normal curve")

dsty = density(mtcars$mpg, kernel = "gaussian")
str(dsty)
lines(dsty$x, dsty$y, type = 'l', lwd = 2)


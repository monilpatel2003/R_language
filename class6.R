?mtcars
#pie charts
head(mtcars)
str(mtcars)

counts <- table(mtcars$cyl)

counts <- as.vector(table(mtcars$cyl))
lbls <- c("4", "6", "8")
pct <- round(counts/sum(counts)*100)
lbls <- paste(lbls, pct, sep=";")
lbls <- paste(lbls, "%", sep="")
pie(counts, labels = lbls, col = rainbow(length(lbls)),main = "Pie Chart of cylinders")
install.packages("plotrix")
library(plotrix)


counts = as.vector(table(mtcars$cyl))
lbls <- c("4","6","8")
pct <- round(counts/sum(counts)*100)
lbls <- paste(lbls,pct,sep = ";")
lbls <- paste(lbls, "%", sep = "")
pie3D(counts, labels = lbls, col = rainbow(length(lbls)),explode = 0.01, main = "Pie Chart of Cylinders in Data")


#Normal Distribution
#Sample Size n = 100

set.seed(12)
?set.seed
x <- rnorm(n = 100, mean = 0, sd = 1)
hist(x, breaks = 50, xlim=c(-4,4))


x <- rnorm(n = 500, mean = 0, sd = 1)
hist(x, breaks = 50, xlim = c(-4,4))

x <- rnorm(n = 1000, mean = 0, sd = 1)
hist(x, breaks = 50, xlim = c(-4,4))

set.seed(123456)
x <- rbinom(n = 50, size = 10, prob = 0.1)
hist(x, freq = F, breaks = seq(from = -0.5, to = 10.5, by = 1))

x <- rbinom(n = 50, size = 10, prob = 0.5)
hist(x, freq = F, breaks = seq(from = -0.5, to = 10.5, by = 1))

png("four-hists.png", width = 1000, height = 500)

t = (-400:400)/100; set.seed(12)
par(mfrow = c(2,2))
for(n in c(100,500,1000,5000)){
  x <- rnorm(n = n, mean = 0, sd = 1)
  hist(x, breaks = 50, freq = F, main = paste("n=", n), xlim = c(-4,4),ylim = c(0,0.8))
  lines(t, dnorm(t,0,1), lwd = 2, col = "blue")  
}

dev.off()

mycolors = c("#FF00FF","#8C1D40","#FFC627","#00FFFF")
png("four-hists-w-col.png", width = 1000, height = 500)

t = (-400:400)/100; set.seed(12)
par(mfrow = c(2,2))

iter = 0
for(n in c(100, 500, 1000, 5000)){
  iter = iter + 1
  x <- rnorm(n = n, mean = 0, sd = 1)
  hist(x, breaks = 50, freq = F, main = paste("n" = n), col = mycolors[iter], xlim = c(-4,4), ylim = c(0,0.8))
  lines(t, dnorm(t,0,1), lwd = 2, col = "blue")
}

dev.off()

getwd()
flowers <- read.csv("flower.csv")
str(flowers)


plot(flowers$weight)
plot(x = flowers$weight, y = flowers$shootarea)
plot(flowers$shootarea ~ flowers$weight)

my_x <- 1:10
my_y <- seq(from = 1, to = 20, by = 2)

par(mfrow = c(2,2))
plot(my_x, my_y, type = "l")
plot(my_x, my_y, type = "b")
plot(my_x, my_y, type = "o")
plot(my_x, my_y, type = "c")

par(mfrow = c(1,1))

attach(flowers)
hist(flowers$height)
max(flowers$height)

brk <- seq(from = 0, to = 18, by = 1)
hist(flowers$height, breaks= brk, main = "petunia height")

brk <- seq(from = 0, to = 18, by = 1)
hist(flowers$height, breaks = brk, freq = F, main = "petunia height")

dens <- density(flowers$height)
hist(flowers$height, breaks = brk, freq = F, main = "petunia height")
lines(dens)


boxplot(flowers$weight, ylab = "weight(g)")
boxplot(weight ~ nitrogen, data = flowers, ylab = "weight(g)", xlab = "nitrogen level")

flowers$nitrogen <- factor(flowers$nitrogen, levels = c("low","medium","high"))
boxplot(weight ~ nitrogen, data = flowers, ylab = "weight(g)", xlab = "nitrogen level")


install.packages("vioplot")
library(vioplot)
vioplot(weight ~ nitrogen, data = flowers, ylab = "weight(g)", xlab = "nitrogen level", col = "lightblue")

dotchart(flowers$height)
dotchart(flowers$height, group = flower$nitrogen)

pairs(flowers[, c["height","weight","leafarea","shootarea","flowers"]])
pairs(flowers[,4:8])

pairs


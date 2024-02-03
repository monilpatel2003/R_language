#Question 1
getwd()
whale <- read.csv("whaledata.csv")
str(whale)
View(whale)

#Question 2
head(whale, n = 5)

#Question 3
names(whale)

#Question 4
str(whale)

#Question 5
summary(whale)

#Question 6 - a
whale.sub <- whale[1:10, 1:4]
whale.sub

#Question 6 - b 
whale.num <- whale[,c(1,3,4)]
whale.num

#Question 6 - c
whale.may <- whale[1:50, ]
whale.may

#Question 6 - d
x <- ncol(whale)
whale.may <- whale[-(1:10),1:x - 1]
whale.may

#Queston 7 - a
whale.dept <- whale[whale$depth > 1200, ]
whale.dept

#Question 7 - b
whale.step <- whale[whale$gradient > 200,]
whale.step

#question 7 - c
whale.noise <- whale[whale$water.noise == "low",]
whale.noise

#question 7 - d
whale.highlevel <- whale[(whale$month == "May" & whale$water.noise == "high"),]
whale.highlevel

#question 7 - e
whale.month <- whale[(whale$month == "October" & whale$gradient > 132),]
whale.month

#question 7 - f
whale.latlong <- whale[(whale$latitude > 60.0 & whale$latitude < 61) & (whale$longitude > -6 & whale$longitude < -4), ]
whale.latlong

#question 7 - g
whale.voicelevel <- whale[whale$water.noise != "medium",]
whale.voicelevel

#Question 8
whale_dpt <- whale[(whale$depth > 1500 & whale$number.whales > mean(whale$number.whales)),]
whale.dept

#Question 9
whale_sub <- subset(whale, month == "May", depth > 1000)
whale.sub

#Question 10
whale_asc <- whale[order(whale$depth, decreasing = F),]
whale_asc

#Question 11
whale_asc <- whale[order(whale$depth, whale$water.noise ,decreasing = F),]
whale_asc

#Question 12
whale_mean <- mean(whale$time.at.station)
whale_median <- median(whale$depth)
whale_observation <- nrow(whale)
whale_mean
whale_median
whale_observation

#Question 13
area_of_circle <- function(diameter){
  radius <- diameter / 2
  area_of_circle <- pi*(radius^2)
  return(area_of_circle)
}
diameter <- 3.4
area_of_circle(diameter)



#Question 14
Celcius <- function(F){
  C <- (F - 32)*(5/9)
  return(C)
}
F <- 68
Celcius(F)

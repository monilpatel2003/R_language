#Lec 4 01/18/2024

getwd()
flowers <- read.csv("flower.csv")
str(flowers)

height_ord <- flowers[order(flowers$height),]
height_ord

leafarea_ord <- flowers[order(flowers$leafarea, decreasing = T), ]
leafarea_ord

block_height_ord <- flowers[order(flowers$block, flowers$height), ]
block_height_ord

block_height_ord <- flowers[order(flowers$block, -flowers$height), ]
block_height_ord

block_revheight <- flowers[order(-xtfrm(flowers$nitrogen), flowers$height),]
block_revheight



flowers$nitrogen <- factor(flowers$nitrogen, levels = c("low", "medium", "high"))
nit_ord <- flowers[order(flowers$nitrogen), ]
nit_ord


df1 <- data.frame(id = 1:4, height = c(120,150,132,122), weight = c(44,56,49,45))
df1

df2 <- data.frame(id = 5:6, height = c(119,110), weight = c(39,35))
df2

df3 <- data.frame(id = 1:4, height = c(120,150,132,122), weight = c(44,56,49,45))
df3

df4 <- data.frame(location = c("USA","CZ","NZ","UK"))
df4

df_rcomb <- rbind(df1,df2)
df_rcomb

df_ccomb <- cbind(df3,df4)
df_ccomb


#log_10 transformation
df_rcomb$height_log10 <- log10(df_rcomb$height)
df_rcomb


df_rcomb$Fid <- factor(df_rcomb$id)
df_rcomb$Fid

df_rcomb
str(df_rcomb)

df1 <- data.frame(name = c("John","Amy","David","Jenny"), states = c("AZ","MN","CA","OH"), age = c(20,19,30,40))
df1

df2 <- data.frame(Name = c("Vanya","Ayush","Monil","Amit","Aastha","Sumit","Neil"), states = c("AZ","TX","MN","VA","NM","OK","NJ"), age = c(21,34,55,65,19,25,90))
df2

merged_df1 <- merge(df1,df2)
merged_df1



merged_df2 <- merge(df1,df2,all = T)
merged_df2

summary(flowers)
summary(flowers[, 4:7])
summary(flowers$leafarea)


table(flowers$nitrogen)
xtabs(-nitrogen + treat, data = flowers)

ftable(xtabs(-nitrogen+treat+block, data = flowers))

tapply(flowers$height , flowers$nitrogen, mean)
tapply(flowers$height , flowers$nitrogen, sd)
tapply(flowrs$height, flowers$nitrogen, summary)

tapply(flowers$height , list(flowers$nitrogen, flowers$treat), mean)

install.packages("dslabs")
library(dslabs)

data("murders")
View(murders)
str(murders)
head(murders)
tail(murders)

sort(murders$total)
max(murders$total)

i_max <- which.max(murders$total)
i_max

murders$state[i_max]



## Control Flow
cv <- function(radius, height){
  pi <- 3.1415
  volume <- pi*radius^2*height
  
  return(volume)
}

cv(2,3)
X^2


cubic <- function(X){
  cubed <- X^3
  return(cubed)
  
}

y = sample(-5:5, 5, replace = F)
y

for(i in 1:length(y)){
  if(y[i] > 0){
    cat(sprintf('%d is a positive number.\n',y[i]))
  }else if(y[i] < 0){
    cat(sprintf('%d is a negative number.\n',y[i]))
  }else{
    print(sprintf("%d is neither positive nor negative.\n"),y[i])
  }
}

myfun <- funtion(x) ifelse(x <= 0, x-5, x^2)
x = c(4,-2,0,5,-1,-3)
myfun(x)

good.day <- function(code.working, day){
  if(code.working == T && day == "Friday"){
    "Best day ever"
  } else if(code.working == F && day == "Friday"){
    "Well, at least it's Friday"
  }else if(code.working == T && day != "Friday"){
    "So close to a good day"
  }else if(code.working == F && day != "Friday"){
    "Hello darkness!"
  }
}
good.day(code.working = T, day = "Friday")
good.day(code.working = F, "Tuesday")
library(dslabs)
data(murders)
View(murders)
str(murders)
dim(murders)
head(murders)
tall(murders)

#Which states, if any, have a murder rate lower than 0.5 per 10,0000
murder_rate <- murders$total/murders$population * 100000
murder_rate

ind <- which.min(murder_rate)
ind

if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
}else{
  print("Noo state has murder rate that low")
}

# 25%, 75%

a <- 0
ifelse(a > 0, 1/a, NA)

a <- c(0, 1, 2, -4, 5)
result <- ifelse(a > 0, 1/a, NA)
result

z <- c(T,T,F)



x = c("blue", "magenta", "yellow", "green", "cyan", "magenta", "black", "red")
replacemagenta = function(x){  # do NOT change this line of the code!
  
  # your code here
  y <- x
  rem <- which(y == "magenta")
  y <- y[-rem]
  y
  
  return(y)}


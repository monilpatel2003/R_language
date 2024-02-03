#GW#3

#Q1
x <- c(1,2,-3,4)
if(all(x > 0)){
  print("All Postives")
} else{
  #print("Not all positives")
}

#Q2
#ans: d

#Q3

state_nam <- c("Arizona","Alaska","Pennsylvania","North Carolina")
state_abbreviation <- c("AZ","AK","PN","NC")

long_names <- state_nam[nchar(state_nam) > 8]
new_names <- state_abbreviation[nchar(state_nam) > 8]

short_name <- state_nam[nchar(state_nam) < 8]
new_short_name <- state_abbreviation[nchar(state_nam) < 8]

new_names
new_short_name


#Q4
sum_n <- function(n){
  sum_num <- 1:n
  sum_total <- sum(sum_num)
  return(sum_total)
}
n = 5000
result <- sum_n(n)
print(result)

#Q5
altman_plot <- function(x, y) {

  sum_xy <- sum(x + y)
  diff_xy <- sum(x - y)
  

  plot(sum_xy, diff_xy, pch = 16,
       xlab = "Sum between x and y",
       ylab = "Difference between x and y",
       main = "Altman Plot",
       abline(h = 0, v = 0, col = "gray", lty = 2)
       
  )
  
}


x <- c(1, 2, 3, 4, 5)
y <- c(5, 4, 3, 2, 1)


altman_plot(x, y)



#Q7
s_n <- function(n){
  sum_num <- 0
  for (i in 1:n){
    sum_num <- sum_num + i^2
  }
  return(sum_num)
}

result <- s_n(10)
print(result)


#Q8
s_n <- vector("numeric", 25)
for (i in 1:25) {
  s_n[i] <- i * (i + 1) / 2
}
print(s_n)


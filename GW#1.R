#no.1
natural_log <- log(12.43)
natural_log

log_base10 <- log10(12.43)
log_base10

log_base2 <- log2(12.43)
log_base2

square_root <- sqrt(12.43)
square_root

natural_antilog <- exp(12.43)
natural_antilog


#no.2
radius <- 20/2
area_of_circle <- pi*radius^2
area_of_circle

#no.3
cube_root <- (14*0.51)^(1/3)
cube_root

#no.4
weight <- c(69,62,57,59,59,64,56,66,67,66)
weight

#no.5
mean_weight <- mean(weight)
variance_weight <- var(weight)
sd_weight <- sd(weight)
ran_weight <- range(weight)
num_child <- length(weight)
mean_weight
variance_weight
sd_weight
ran_weight
num_child

#no.6
first_five <- weight[1:5]
first_five

#no.7
height <- c(112, 102, 83, 84, 99, 90, 77, 112, 133, 112)
height

#no.8
summary_height <- summary(height)
summary_height

#no.9
some_child <- height[c(2, 3, 9, 10)]
some_child

#no.10
shorter_child <- height[height <= 99]
shorter_child

#no.11
bmi <- weight / ((height / 100)^2)
bmi

#no.12
seq1 <- seq(0, 1, by = 0.1)
seq1

#no.13
seq2 <- seq(10, 1, by = -0.5)
seq2 <- rev(seq2)
seq2

#no.14
seq2 <- rep(c(1, 2, 3), times = 4)
seq3 <- rep(c("a", "c", "e", "g"), each = 3, times = 4)
seq4 <- rep(c("a", "c", "e", "g"), times = 3, each = 4)
seq5 <- rep(1:3, each = 3, times = 3)
seq6 <- rep(1:5, times = c(3, 3, 3, 4, 5, 2))
seq7 <- rep(c(7, 2, 8, 1), times = c(4, 3, 1, 5))
seq2
seq3
seq4
seq5
seq6
seq7

#no.15
height_sorted <- sort(height)
height_sorted


#no.16
height_rev <- sort(height, decreasing = TRUE)
height_rev

#no.17
child_names <- c("Alfred", "Barbara", "James", "Jane", "John", "Judy", "Louise", "Mary", "Ronald", "William")
child_names

#no.18
names_sort <- child_names[order(height)]
names_sort

#no.19
weight_rev <- child_names[order(weight, decreasing = TRUE)]
weight_rev

#no.20
mydata <- c(2, 4, 1, 6, 8, 5, NA, 4, 7)
mydata

#no.21
mean_without_na <- mean(mydata, na.rm = TRUE)
mean_without_na


#no.22
ls()
rm(seq1)


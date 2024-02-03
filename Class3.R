getwd()
flowers <- read.csv("flower.csv")
str(flowers)
View(flowers)

f_height <- flowers$height
mean(f_height)
mean(flowers$height)

summary(f_height)

#Extract the first 10 rows and the first 4 columns
flowers[1:10, 1:4 ]

#Extract the first value (1st row) of the height variable (4th column)
flowers[1:1,4:4]
flowers[1,4]

#Extract the 1st, 5th, 12th, 30th rows from the 1st, 3rd, 6th, and 8th columns

flowers[c(1,5,12,30),c(1,3,6,8)]

#Extract first 8 rows and all the columns

flowers[1:8, ]

#Extract all of the rows and first 3 columns
flowers[,1:3]

#Extract all of the rows except the first 85 rows and all columns except the 4th, 7th, and 8th columns
flowers[-(1:85), -c(4,7,8)]

flowers[1:5, c("treat","nitrogen","leafarea")]

big_flowers <- flowers[flowers$height >12]
big_flower

flowers[flowers$height >= 6, ]
flowers[flowers$height == 8, ]

#Extract all rows where height is greater than 12.3 or less than 2.2

flowers[flowers$height > 12.3 | flowers$height < 2.2, ]

subset(flowers, treat == "tip" & nitrogen == "medium" & block == 2,)

#Ordering data frames

height_ord <- flowers[order(flowers$height),]
height_ord

leafarea_ord <- flowers[order(flowers$leafarea, decreasing = T),]
leafarea_ord





## Name table iris
setwd("C:/Users/bjega/Desktop/Biocomputing")
iris <- read.csv(file="iris.csv", header = TRUE, sep=',')

##Problem 1, Head function
#Define variable of how many lines desired
x=5
#Choose top x rows
iris[1:x,]

## Problem 2

# Tail question, but a tail function  already exists
IT2 <- tail(iris, n=2)
IT2[,4:5]

# Species count
sumsetosa <- sum(iris$Species=='setosa')  #Count of setosa
sumversicolor <- sum(iris$Species=='versicolor') #Count of Versicolor
sumvirginica <- sum(iris$Species=='virginica') #count of Virginica

# Return rows with Sepal.Width >3.5
iris[iris[,3]>3.5,]

# Write setosa to setosa.csv
setosa <- iris[iris[,5]=='setosa',]
write.csv(x=setosa, file='setosa.csv')

#Mean, min, max Petal.Length
virginica <- iris[iris[,5]=='virginica',]
vir.PL <- virginica[,3]
mean(vir.PL)
min(vir.PL)
max(vir.PL)

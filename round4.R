# Petal lengths, but only for setosa flowers
iris$Petal.Length[iris$Species == "setosa"]

# Average petal length of setosa
mean(iris$Petal.Length[iris$Species == "setosa"])
# Average petal length for each species
tapply(iris$Petal.Length, iris$Species, mean)
tapply(iris$Petal.Length, iris$Species, max)    # longest petal in each species
tapply(iris$Sepal.Width, iris$Species, mean)    # average sepal width per species

# 1. What's the average sepal length of "virginica" flowers? (use Way 1)
tapply(iris$Sepal.Length, iris$Species, mean) #way 2
mean(iris$Sepal.Length[iris$Species== "virginica"])
# 2. What's the average petal width for each species? (use tapply)
tapply(iris$Petal.Width, iris$Species, mean)
# 3. How many "versicolor" flowers have a petal length greater than 4?
#    Hint: you need two checks at once. & means "and", like this:
#    iris$Species == "versicolor" & iris$Petal.Length > 4
tapply(iris$Petal.Length > 4, iris$Species, sum)
tapply(iris$Petal.Length > 4, iris$Species, mean) #proportions 


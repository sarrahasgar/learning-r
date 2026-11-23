# Round 3: Data frames

# head() shows the first 6 rows of a table
head(iris)

# str() shows the structure: number of rows, columns, and each column's type
str(iris)

# $ pulls out one column. The result is a vector, just like scores
iris$Sepal.Length

# Vector tools work on columns too
mean(iris$Sepal.Length)          # average sepal length
max(iris$Petal.Width)            # largest petal width
sum(iris$Sepal.Length > 6)       # how many flowers have sepal length over 6

# table() counts how many rows are in each category
table(iris$Species)

# Exercise: how many flowers have petal length greater than 5?

sum(iris$Petal.Length>5)

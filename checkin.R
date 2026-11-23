head(mtcars) 
str(mtcars)
# 1. What's the average mpg of all the cars?
mean(mtcars$mpg)

# 2. How many cars have more than 200 horsepower?
sum(mtcars$hp>200)
# 3. What's the average mpg of 4-cylinder cars only?
mean(mtcars$mpg[mtcars$cyl == 4])
# 4. What's the average mpg for each number of cylinders? (all groups at once)
tapply(mtcars$mpg, mtcars$cyl, mean)
# 5. How many 8-cylinder cars weigh more than 4,000 lbs?
sum(mtcars$cyl==8 & mtcars$wt>4)
# 6. BONUS: For each number of cylinders, what proportion of cars are manual?
tapply( mtcars$am == 1, mtcars$cyl, mean)



install.packages("tidyverse")   # run ONCE in the Console; takes a few minutes
library(tidyverse)              # put this at the top of every script
filter(iris, Species == "setosa")
filter(iris, Species == "setosa" & Petal.Length > 1.5)
select(iris, Species, Petal.Length)
arrange(iris, Petal.Length)          # smallest to largest
arrange(iris, desc(Petal.Length))    # largest to smallest
iris |>
  filter(Species == "setosa") |>
  select(Species, Petal.Length) |>
  arrange(desc(Petal.Length))
iris |>
  filter(Species == "setosa") |>
  nrow()

# 1. Keep only the 4-cylinder cars (use filter)
filter(mtcars,cyl == 4)
# 2. Show only the mpg and hp columns (use select)
select(mtcars, mpg, hp)
# 3. Sort all cars from highest to lowest mpg (use arrange)
arrange(mtcars, mpg)
# 4. Using pipes: keep 6-cylinder cars, keep only the mpg and hp columns,
#    then sort by hp from highest to lowest
mtcars |> 
  filter(cyl == 6) |> 
  select(mpg, hp) |> 
  arrange(hp)
# 5. Using pipes: how many cars have more than 200 hp AND get less than 15 mpg?
mtcars |> 
  filter(hp>200 & mpg<15) |> 
  nrow()

#' These are the base plots for [ggplot2 cheatsheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf).
#' 
#' # Graphical Primitives -- `a`, `b`
library(ggplot2)

a <- ggplot(economics, aes(date, unemploy))

b <- ggplot(seals, aes(x = long, y = lat))

#' # One Variable -- `c`, `c2`, `d`

c <- ggplot(mpg, aes(hwy))
c2 <- ggplot(mpg)

d <- ggplot(mpg, aes(fl))

#' # Two Variables -- `e`, `f`, `g`, `h`, `i`, `df`, `j`, `data`, `map`, `k`

e <- ggplot(mpg, aes(cty, hwy))

f <- ggplot(mpg, aes(class, hwy))

g <- ggplot(diamonds, aes(cut, color))

h <- ggplot(diamonds, aes(carat, price))

i <- ggplot(economics, aes(date, unemploy))

df <- data.frame(grp = c("A", "B"), fit = 4:5, se = 1:2)
j <- ggplot(df, aes(grp, fit, ymin = fit-se, ymax = fit+se))

install.packages('maps')
data <- data.frame(murder = USArrests$Murder, state = tolower(rownames(USArrests)))
map <- map_data("state")
k <- ggplot(data, aes(fill = murder))

#' # Three Variables -- `seals$z`, `l`

seals$z <- with(seals, sqrt(delta_long^2 + delta_lat^2))
l <- ggplot(seals, aes(long, lat))

#' # Scales -- `n`, `o`, `p`

n <- d + geom_bar(aes(fill = fl))

o <- c + geom_dotplot(aes(fill = ..x..))

p <- e + geom_point(aes(shape = fl, size = cyl))

#' # Coordinate Systems -- `r`

r <- d + geom_bar()

#' # Position Adjustments -- `s`

s <- ggplot(mpg, aes(fl, fill = drv))

#' # Faceting -- `t`

t <- ggplot(mpg, aes(cty, hwy)) + geom_point()

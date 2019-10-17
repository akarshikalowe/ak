
library(jsonlite)
mydata <- fromJSON("http://localhost:5000/api/v1/earthquake_monthly_data")

setwd("E:/class/BusinessInteligence/project1")
earthquakedata = read.csv(file="earthquake.csv")
earthquakedata


library(jsonlite)
mydata <- fromJSON("http://localhost:5000/api/v1/earthquake_monthly_data")
tsunami <- subset(mydata, tsunami == 1)

library(rworldmap)
newmap <- getMap(resolution = "low")
plot(newmap, asp = 1)
points(tsunami$longitude, tsunami$latitude, col = "red", cex = 1.5)


magnitude <- subset(mydata, magnitude > 6)
magnitude
magmap <- getMap(resolution = "low")
plot(magmap, asp = 1)
points(magnitude$longitude, magnitude$latitude, col = "red", cex = 5.5)
magnitude$place

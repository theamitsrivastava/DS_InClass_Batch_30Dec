e_quakes<-datasets::quakes
head(e_quakes,10)
tail(e_quakes,10)
str(e_quakes)
summary(e_quakes)
summary(e_quakes$depth)
summary(e_quakes$mag)
plot(e_quakes$depth,type = 'p')
plot(e_quakes$mag,type = 'l')
plot(e_quakes$depth,e_quakes$mag,type = 'p')
hist(e_quakes$depth)
hist(e_quakes$mag)
boxplot(e_quakes$depth, main= "Boxplot")
boxplot(e_quakes[,3:4],main="Multiple")

var(e_quakes$depth,na.rm=T)
sd(e_quakes$depth,na.rm = T)
var(e_quakes$mag,na.rm=T)
sd(e_quakes$mag,na.rm = T)

library(moments)
moments::kurtosis(e_quakes$depth) 
moments::skewness(e_quakes$depth)
moments::kurtosis(e_quakes$mag)
moments::skewness(e_quakes$mag)

hist(e_quakes$depth, main="Skewness", freq=FALSE)
lines(density(e_quakes$depth), col='red', lwd=3)




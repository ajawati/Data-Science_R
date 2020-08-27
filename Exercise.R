e_quakes<-datasets::quakes
#perform everything + below
#skewness
#kurtosis
#var
#standard deviation
e_quakes

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

######Columns

e_quakes[,c(1,2)]
df<-e_quakes[,-6]

summary(e_quakes[,1])

summary(e_quakes)


e_quakes$lat


###########Summary of the data#########
summary(e_quakes$lat)
summary(e_quakes)
summary(e_quakes$long)

#####################
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long,type="p")
plot(e_quakes)

# points and lines 
plot(e_quakes$lat, type= "b") # p: points, l: lines,b: both
plot(e_quakes$lat, ylab = 'lat', 
     xlab = 'No of Instances', main = 'lat of earthquakes',
    col = 'blue')
# Horizontal bar plot
barplot(e_quakes$lat, main = 'lat of earthquakes',
        ylab = 'lat', col= 'blue',horiz = T,axes=T)

#Histogram
hist(e_quakes$lat)
hist(e_quakes$long, 
     main = 'longitude of earthquake',
     xlab = 'long', col='blue')

#Single box plot
boxplot(e_quakes$lat,main="Temp_Boxplot")

# Multiple box plots
boxplot(e_quakes,main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
barplot(e_quakes$lat, main = 'lat of earthquakes',
        xlab = 'lat', col='green',horiz = TRUE)
hist(e_quakes$lat)
boxplot(e_quakes$lat)
boxplot(e_quakes[,0:4], main='Multiple Box plots')


#skewness
skewness(e_quakes)

#kurtosis
kurtosis(e_quakes)

#variance
variance(e_quakes$mag,e_quakes$stations, v=1)

#standard deviation
sd(e_quakes$lat,na.rm = FALSE)

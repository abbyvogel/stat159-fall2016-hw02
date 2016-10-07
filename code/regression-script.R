#Abby Vogel, stat 159 hw2

#read in data
ad <- read.csv("../data/Advertising.csv")

########################
# REGRESSION MODEL
########################

reg <- lm(Sales ~ TV, ad)


regplot <- plot(ad$Sales~ad$TV, pch=19, col="red", xlab = "TV", ylab= "Sales", main="Linear Regression")
regline <- abline(reg$coefficients[1], b=reg$coefficients[2], col="blue")
sumreg <- summary(reg)


#save the rData of the regression objects
save(reg, sumreg, file="~/Desktop/stat159-fall2016-hw02/data/regression.RData")

########################
# IMAGES
########################


#export the scatterplot to PNG
png(file="~/Desktop/stat159-fall2016-hw02/images/scatterplot-tv-sales.png")
regplot <- plot(ad$Sales~ad$TV, pch=19, col="red", xlab = "TV", ylab= "Sales", main="Linear Regression")
regline <- abline(reg$coefficients[1], b=reg$coefficients[2], col="blue")
dev.off()
#god bless america it worked

#export the scatterplot to jpg
pdf(file="~/Desktop/stat159-fall2016-hw02/images/scatterplot-tv-sales.pdf")
regplot <- plot(ad$Sales~ad$TV, pch=19, col="red", xlab = "TV", ylab= "Sales", main="Linear Regression")
regline <- abline(reg$coefficients[1], b=reg$coefficients[2], col="blue")
dev.off()
#life is good, god is good


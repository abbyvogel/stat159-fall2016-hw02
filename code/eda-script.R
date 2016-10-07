#read in data
ad <- read.csv("../data/Advertising.csv")

##########################
#SUMMARY STATISTICS
##########################

sink("~/Desktop/stat159-fall2016-hw02/data/eda-output.txt")
print("Summary Statistics of Thousands of Dollars Spent on TV Advertising")
summary(ad$TV)
print("Summary Statistics of Sales (Thousands of Units)")
summary(ad$Sales)
sink()



############################
#IMAGES
############################


#export the hist-tv to PNG
png(file="~/Desktop/stat159-fall2016-hw02/images/histogram-tv.png")
hist(ad$TV, xlab= "TV Advertising (Thousands of Dollars)", main= "Histograph of Cost of TV Advertising")
dev.off()

#export the hist-tv to jpg
pdf(file="~/Desktop/stat159-fall2016-hw02/images/histogram-tv.pdf")
hist(ad$TV, xlab= "TV Advertising (Thousands of Dollars)", main= "Histograph of Cost of TV Advertising")
dev.off()
#go bears

#export the hist-sales to PNG
png(file="~/Desktop/stat159-fall2016-hw02/images/histogram-sales.png")
hist(ad$Sales, xlab= "Sales (Thousands of Units)", main= "Histograph of Sales")
dev.off()

#export the hist-tv to jpg
pdf(file="~/Desktop/stat159-fall2016-hw02/images/histogram-sales.pdf")
hist(ad$Sales, xlab= "Sales (Thousands of Units)", main= "Histograph of Sales")
dev.off()
#go bears


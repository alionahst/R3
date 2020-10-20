    #Chapter 3: Basic graphics and data - Aliona Hoste

demo(graphics)
plot(iris)




#1. Plot a cheat-sheet with values of color and point type (col = , and pch = ) from 1 to 25, and export it as a jpeg of 15 cm wide, 6 cm high and resolution 100 points per cm.
plot(0, 0, xlim = c(0, 26), ylim = c(0.5, 1.5)
     , ylab = "color", xlab = "color number", yaxt = "n")
for (i in 1:25) {
  points(i, 1, pch = i, col = i, cex = 1.5)
}

jpeg(filename = "firstplot.jpeg", width = 15, height = 6, units = "cm", res = 100)           
plot(0, 0, xlim = c(0, 26), ylim = c(0.5, 1.5)
     , ylab = "colors & sign", xlab = "color number", yaxt = "n")
for (i in 1:25) {
  points(i, 1, pch = i, col = i, cex = 1.5)
}
dev.off()              



#2. Plot into a graph ten Poisson distributions with lambda ranging from 1 to 10. Put legend and title. Export it as a .tiff file with size of 15x15 cm.
x   <- seq(-1, 20, 1)                # Sequence
y   <- dpois(x, lambda = 1)           # densities for x
plot(x, y, type = "n")               # Empty plot (type = "n")

for(i in 1:10){
  y <- dpois(x, lambda = i)
  lines(x, y, col = i)
  }
title(main="Poisson distribution, lambda = 1:10")
legend("topright", legend = paste("lambda =", 1:10),lty = 1, col = 1:10)


#export into tiff plot
tiff("Plot1_poisson_1to10.tiff", width = 15, height = 15, units = "cm", 
     bg = "transparent", res = 150)       # Open the device "Plot1.tiff"
x   <- seq(-1, 20, 1)                # Sequence
y   <- dpois(x, lambda = 1)           # densities for x
plot(x, y, type = "n")               # Empty plot (type = "n")

for(i in 1:10){
  y <- dpois(x, lambda = i)
  lines(x, y, col = i)
}
title(main="Poisson distribution, lambda = 1:10")
legend("topright", legend = paste("lambda =", 1:10),lty = 1, col = 1:10)

dev.off() 






#3. Import data from this article: https://peerj.com/articles/328/
Webcsv <- "https://dfzljdn9uc3pi.cloudfront.net/2014/328/1/Appendix1.csv"
Data <- read.table(Webcsv, header = T, sep = ",", skip = 2)
str(Data)
#Be careful importing the data. Notice that you have to skip two first lines using “skip = 2”13.
#With these data, using for(), plot graphs to represent the effect of all the numerical variables, from “richness” to “mean_quality” on “yield”. Choose the type of graph that you think better represents this effect for the different species. Create only one pdf with all the graphs inside.
#To find the best graph for each type of data, a very helpful web is from Data to Viz https://www.data-to-viz.com/.

plot(Data[-1])

plot(Data$mean_yield ~ Data$richness)


for(i in names(Data[6:12]))
    {
  plot(Data$mean_yield ~ Data[[i]], ylab = "Mean yields", xlab = as.character(names(Data[i])))
       title(main= paste("Mean yield in function of", as.character(names(Data[i]))))
}


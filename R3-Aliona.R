    #Chapter 3: Basic graphics and data - Aliona Hoste

demo(graphics)
plot(iris)




#1. Plot a cheat-sheet with values of color and point type (col = , and pch = ) from 1 to 25, and export it as a jpeg of 15 cm wide, 6 cm high and resolution 100 points per cm.
plot(0, 0, xlim = c(0, 26), ylim = c(0.5, 1.5)
     , ylab = "color", xlab = "color number", yaxt = "n")
for (i in 1:25) {
  points(i, 1, pch = i, col = i, cex = 1.5)
}





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

skip = 2






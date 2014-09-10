# set working directory
setwd("~/Dropbox/classes/adv-methods/slides/mle")

# clear workspace
rm(list = ls())

# load packages
library(compactr)

# log-likelihood for binomial
ll.fn <- function(p, n, y) {
  y*log(p) + (n - y)*log(1 - p)
}

# parameter values
p <- seq(.01, .99, length.out = 1000)

# set graphical parameters

# calculate and plot log-likelihood
n <- 10
y <- 7
ll <- ll.fn(p, n, y)
pdf("figs/ll-binom-10-7.pdf", height = 3, width = 4)
par(mfrow = c(1,1), mar = c(4,4,2,1), oma = c(0,0,0,0))
eplot(xlim = c(0, 1), ylim = mm(ll), 
      xlab = expression(pi), 
      ylab = "log-likelihood",
      ylabpos = 2.5,
      main = paste("n = ", n, ", y = ", y, sep = ""))
lines(p, ll, lwd = 3)
dev.off()
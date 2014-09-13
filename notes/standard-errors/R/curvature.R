# clear working directory
rm(list = ls())

# set seed
set.seed(8742570)

# set working directory
setwd("~/Dropbox/classes/adv-methods/notes/standard-errors")

# load packages
library(compactr)

ll <- function(mu, y) {
  ll <- -sum((y - mu)^2)/2
  return(ll)
}

y1 <- rnorm(100, 2)
y1 <- y1 - mean(y1) + 2
y2 <- rnorm(500, 2)
y2 <- y2 - mean(y2) + 2


mu <- seq(-1, 4, length.out = 100)
ll1 <- apply(as.matrix(mu), 1, ll, y1)
ll2 <- apply(as.matrix(mu), 1, ll, y2)

pdf("figs/curvature.pdf", height = 2.5, width = 6)
par(mfrow = c(1,2), mar = c(.5,.5,.5,.5), oma = c(3,4,1,1))
eplot(xlim = mm(mu), ylim = mm(c(ll1, ll2)),
      xlab = expression(theta),
      ylab = "log-likelihood",
      ylabpos = 2.7, 
      main = expression(italic(y[1])))
lines(mu, ll1, lwd = 3, col = 1)
lines(c(2, 2), c(par("usr")[3], ll(2, y1)), col = "grey50", lty = 3)

aplot(expression(italic(y[2])))
lines(mu, ll2, lwd = 3)
lines(c(2, 2), c(par("usr")[3], ll(2, y2)), col = "grey50", lty = 3)


dev.off()
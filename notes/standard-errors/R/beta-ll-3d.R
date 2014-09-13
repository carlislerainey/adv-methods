# clear working directory
rm(list = ls())

# set seed
set.seed(8742570)

# set working directory
setwd("~/Dropbox/classes/adv-methods/notes/standard-errors")

# load packages
library(plot3D)

# log-likelihood for beta model
ll.fn.beta <- function(theta, y) {
  alpha <- theta[1] 
  beta <- theta[2]
  ll <- alpha*sum(log(y)) + beta*sum(log(1 - y)) - 
    length(y)*log(beta(alpha, beta))
  return(ll)
}

# function to estimate beta model
est.beta <- function(y) {
  est <- optim(par = c(1, 1), fn = ll.fn.beta, y = y,
               control = list(fnscale = -1),
               method = "Nelder-Mead") # for >1d problems
  if (est$convergence != 0) print("Model did not converge!")
  res <- list(est = est$par)
  return(res)
}

# 3d of beta ll
y <- rbeta(1000, 1, 1)
alpha <- seq(.1, 3, length.out = 25)
beta <- seq(.1, 3, length.out = 25)
ll <- matrix(NA, nrow = length(alpha), ncol = length(beta))
for (i in 1:length(alpha)) {
  for (j in 1:length(beta)) {
    ll[i, j] <- ll.fn.beta(c(alpha[i], beta[j]), y)
  }
}

pdf("figs/beta-ll-persp.pdf", height = 5, width = 7)
par(mfrow = c(3, 3), mar = c(1,1,2,0), oma = c(0,0,0,0))
phi <- c(0, 20, 40)
theta <- c(0, 20, 40)
for (i in 1:length(phi)) {
  for (j in 1:length(theta)) {
    persp(z = ll, x = alpha, y = beta,
          xlab = "alpha",
          ylab = "beta",
          zlab = "log-likelihood",
          phi = phi[i],
          theta = theta[j])
  }
}
dev.off()

pdf("figs/beta-ll-contour.pdf", height = 3, width = 4)
par(mfrow = c(1, 1), mar = c(5,4,1,1), oma = c(0,0,0,0))
contour(z = ll, x = alpha, y = beta,
              xlab = "alpha",
              ylab = "beta",
        lwd = 2)
dev.off()


est <- est.beta(y)
pdf("figs/beta-ll-contour-vert.pdf", height = 3, width = 4)
par(mfrow = c(1, 1), mar = c(5,4,1,1), oma = c(0,0,0,0))
contour(z = ll, x = alpha, y = beta,
        xlab = "alpha",
        ylab = "beta",
        lwd = 2)
abline(v = est$est[1], col = "red", lwd = 3)
dev.off()

pdf("figs/beta-ll-contour-horiz.pdf", height = 3, width = 4)
par(mfrow = c(1, 1), mar = c(5,4,1,1), oma = c(0,0,0,0))
contour(z = ll, x = alpha, y = beta,
        xlab = "alpha",
        ylab = "beta",
        lwd = 2)
abline(h = est$est[2], col = "red", lwd = 3)
dev.off()

pdf("figs/beta-ll-contour-diag.pdf", height = 3, width = 4)
par(mfrow = c(1, 1), mar = c(5,4,1,1), oma = c(0,0,0,0))
contour(z = ll, x = alpha, y = beta,
        xlab = "alpha",
        ylab = "beta",
        lwd = 2)
abline(a = est$est[2] - est$est[1], b = 1, col = "red", lwd = 3)
dev.off()

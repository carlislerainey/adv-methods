
# log-likelihood for binomial
ll.fn <- function(p, n, y) {
  y*log(p) + (n - y)*log(1 - p)
}

# data
y <- 7
n <- 10

# optimize
est <- optim(par = .5, fn = ll.fn, y = y, n = n,
             control = list(fnscale = -1),
             method = "Brent",  # for 1d problems
             lower = 0, upper = 1)  # req for Brent
est$par

est.binom <- function(y, n) {
  est <- optim(par = .5, fn = ll.fn, y = y, n = n,
            control = list(fnscale = -1),
            method = "Brent",  # for 1d problems
            lower = 0, upper = 1)
  if (est$convergence != 0) print("Model did not converge!")
  res <- list(est = est$par)
}

m1 <- est.binom(7, 10)
m1
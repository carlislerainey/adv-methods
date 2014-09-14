# define log-likelihood function
ll.logit <- function(beta, y, X) {
  p <- plogis(X%*%beta)
  loglik <- sum(y*log(p)) + sum((1 - y)*log(1 - p))
  return(loglik)
}

# optimize
logit <- function(y, X) {
  init.par <- rep(0, ncol(X))
  est <- optim(par = init.par, fn = ll.logit, y = y, X = X,
               control = list(fnscale = -1),
               hessian = TRUE)  # return the hessian
  if (est$convergence != 0) print("Model did not converge!")
  beta.hat <- est$par
  cov <- solve(-est$hessian)
  res <- list(beta.hat = beta.hat,
              cov = cov)
  return(res)
}

# generate fake data
n <- 1000
x1 <- rnorm(n)
x2 <- rnorm(n)
X <- cbind(1, x1, x2)
b <- c(1, -1, 2)
p <- plogis(X%*%b)
y <- rbinom(n, 1, p)

# estimate model
m1 <- logit(y, X)
m2 <- glm(y ~ x1 + x2, family = "binomial")
m1$beta.hat; m2$coef

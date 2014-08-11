

Logistic Regression
========================================================

The logistic regression model is useful when you have binary outcome data such as whether or not someone voted, whether two countries are at war, and so on. The logit model can be written as follows:

$y_i \sim Bernoulli(\pi_i)$,

where

$\pi_i = \dfrac{1}{1 + e^{-X_i\beta}}$.

Note that we often write $\dfrac{1}{1 + e^{-X_i\beta}} = \text{logit}^{-1}(X_i\beta)$.

Alternatively, we might write the model as

$\text{Pr}(y_i = 1 | X_i) = \text{logit}^{-1}(X_i\beta)$.

Sometimes the conditioning notation is suppressed and the "= 1" bit is often assumed, so that we have

$\text{Pr}(y_i) = \text{logit}^{-1}(X_i\beta)$.


To get a feel for the model, let's simulate some data. In this case, we'll simulate `n = 100` observations and have one variable called `x1`.

```r
n <- 100
beta <- c(-1, 2)
x1 <- runif(n, -1, 1)
X <- cbind(1, x1)
pi <- plogis(X%*%beta)
y <- rbinom(n, 1, pi)
```

Now let's plot the data and the true probability of success.

```r
plot(x1, y)
curve(plogis(beta[1] + beta[2]*x), add = TRUE, lwd = 3, col = "red")
```

![plot of chunk plot-simulated-data](figure/plot-simulated-data.png) 


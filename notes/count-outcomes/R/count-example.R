
# load packages
library(MASS)
library(compactr)
library(compactr)

# read data
d <- read.csv("http://crain.co/am-files/data/hks.tab", sep = "\t")
keep <- c("osvAll", "troopLag", "policeLag", "militaryobserversLag",
          "brv_AllLag", "osvAllLagDum", "incomp", "epduration", "lntpop",
          "conflict_id")
d <- na.omit(d[, keep])
d <- d[d$osvAll < 50000, ]



# estimate poisson model
m1 <- glm(osvAll ~ troopLag + policeLag + militaryobserversLag + 
              brv_AllLag + osvAllLagDum + incomp + epduration + 
              lntpop, 
            data = d, family = "poisson", x = TRUE)

# plot the data
par(mfrow = c(1,1), mar = c(3,5,1,1), oma = c(0,0,2,0))
eplot(xlim = mm(d$troopLag), ylim = mm(d$osvAll),
      xlab = "Number of Troops",
      ylab = "Number of Civilian Casualties",
      ylabpos = 3.3)
points(d$troopLag, d$osvAll)

# compare data to predictive distribution from Poisson model
par(mfrow = c(3,3), mar = c(3,5,1,1), oma = c(0,0,2,0))
eplot(xlim = mm(d$troopLag), ylim = mm(d$osvAll),
      xlab = "Number of Troops",
      ylab = "Number of Civilian Casualties",
      ylabpos = 3.3, 
      main = "Real Data")
points(d$troopLag, d$osvAll)
Xb <- m1$x%*%coef(m1)
lambda <- exp(Xb)
for (i in 1:8) {
  aplot("Simulated Data")
  y.sim <- rpois(length(lambda), lambda = lambda)
  points(d$troopLag, y.sim)
}

# make the comparison using log(y)
par(mfrow = c(3,3), mar = c(3,5,1,1), oma = c(0,0,2,0))
eplot(xlim = mm(d$troopLag), ylim = mm(log(d$osvAll + 1)),
      xlab = "Number of Troops",
      ylab = "Number of Civilian Casualties",
      ylabpos = 2.3, 
      main = "Real Data")
points(d$troopLag, log(d$osvAll + 1))
Xb <- m1$x%*%coef(m1)
lambda <- exp(Xb)
for (i in 1:8) {
  aplot("Simulated Data")
  y.sim <- rpois(length(lambda), lambda = lambda)
  points(d$troopLag, log(y.sim + 1))
}

# estimate negative binomial model
m2 <- glm.nb(osvAll ~ troopLag + policeLag + militaryobserversLag + 
              brv_AllLag + osvAllLagDum + incomp + epduration + 
              lntpop, 
            data = d, init.theta = 5, 
            control = glm.control(epsilon = 1e-12, 
                                  maxit = 2500, 
                                  trace = FALSE))

# compare data to predictive distribution from negative binomial model
par(mfrow = c(3,3), mar = c(3,5,1,1), oma = c(0,0,2,0))
eplot(xlim = mm(d$troopLag), ylim = mm(log(d$osvAll + 1)),
      xlab = "Number of Troops",
      ylab = "Number of Civilian Casualties",
      ylabpos = 2.3, 
      main = "Real Data")
points(d$troopLag, log(d$osvAll + 1))
Xb <- m1$x%*%coef(m1)
mu <- exp(Xb)
for (i in 1:8) {
  aplot("Simulated Data")
  y.sim <- rnbinom(length(lambda), mu = lambda, size = m2$theta)
  points(d$troopLag, log(y.sim + 1))
}

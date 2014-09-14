Homework 3
==========

Due Wednesday, September 17.

## Maximum Likelihood Estimation, cont. 

1. Suppose that *Y* follows an exponential distribution so that $f(y_i | \lambda ) \sim \lambda e^{-\lambda y_i}$ and you observe $y = [1.5, 0.6, 1.2]$.
	* Derive the log-likelihood function.
	* Solve the log-likelihood function analytically (i.e., with calculus).
	* Use `optim()` in R to find the MLE.
2. Recall that for case of a simple linear regression $y \sim N(\beta_{cons} + \beta_x x, \sigma^2)$ with a single explanatory variable $x = [x_1, x_2, ..., x_n]$ and a single outcome variable $y = [y_1, y_2, ..., y_n]$. The least squares estimates of the parameters are $\hat{\beta}_x = \dfrac{\sum_{i = 1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sum_{i = 1}^n(x_i-\bar{x})^2}$ and $\hat{beta}_{cons} = \bar{y} - \hat{\beta}_x \bar{x}$. Find the maximum likelihood estimates of $\beta_{cons}$ and $\beta_x$ and compare these to the least squares estimates.
    * Write down the probability model of the data.
    * Derive the log-likelihood function.
    * Take the derivative of the log-likelihood function w.r.t. $\beta_x$.
    * Take the derivative of the log-likelihood function w.r.t. $\beta_{cons}$.
    * Set both of the above equal to zero and solve. You'll have two unknowns and two equations. Comment on how the ML estimates differ from the LS estimates.
    * Write a little R function to do the optimization numerically.
3. Recall that the standard error is the standard deviation of the sampling distribution. Therefore, you can figure out the true standard error of an estimate by simulating many data sets, re-estimating the model on each, and calculating the standard deviation of the whole collection of estimates. Do this for the beta model we talked about in class and put it in a short R-markdown document. I put a little hint below.
    * Choose specific values for $\alpha$, $\beta$, and $n$.
    * Set up a for-loop in R that generates $y$, estimates the parameters, and stores the parameters for each iteration of the loop.
    * Calculate the standard deviation of the stored parameters.
    
Here's a hint.

    # set the parameters
    n <- [you choose]
    a <- [you choose]
    b <- [you choose]
    
    # do the simulation
    n.sims <- 1000
    alpha.sims <- numeric(n.sims) # a holder for the alphas
    beta.sims <- numeric(n.sims)  # a holder for the betas
    for (i in 1:n.sims) {
    	[simulate y]
    	[estimate alpha and beta]
    	[store estimate of alpha as the ith element of alpha.sims]
    	[store estimate of beta as the ith element of beta.sims]    }
    
    # calculate the standard deviation
    [calculate the standard deviation]

## Logistic Regression

Skim the front-end of the papers below and read the methods and analysis sections carefully. Just try to get a sense of how logistic regression is used in practice.
	
* James D. Fearon and David D. Laitin. 2003. "[Ethnicity, Insurgency, and Civil War](http://www.carlislerainey.com/am-files/papers/FearonLaitin2003.pdf)." *American Political Science Review* 97(1):75–90.
* Robert Huckfeldt and John Sprague. 1992. "[Political Parties and Electoral Mobilization: Political Structure, Social Structure, and the Party Canvass](http://www.carlislerainey.com/am-files/papers/HuckfeldtSprague1992.pdf)." *American Political Science Review* 86(1):70-86.

## Replications

Let me know what paper you're replicating and let me okay it.


## Quiz Questions

* For a given probability model $Y \sim f(y|\theta)$, for vectors $y$ and $\theta$, derive the log-likelihood function and solve for the MLE.
* Some basic questions about the methods and results sections from the readings.

## In Class

* Discuss how to estimate standard errors in the ML framework.
* Extend MLE to probability models with covariates.
* Derive MLE estimates of normal-linear model. 
* Derive MLE estimates for logistic regression and see a few examples.
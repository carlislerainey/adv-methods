Homework 3
==========

Due Wednesday, September 17.

## Maximum Likelihood Estimation, cont. 


* Suppose that *Y* follows an exponential distribution and you observe *y = [1.5, 0.6, 1.2]*.
	* Derive the log-likelihood function.
	* Solve the log-likelihood function analytically (i.e., with calculus).
	* Use `optim()` in R to find the MLE.
* Suppose that *Y* follows a normal distribution and you observe *y = [1.5, 0.6, 1.2]*.
	* Derive the log-likelihood function.
	* Solve the log-likelihood function analytically (i.e., with calculus). Comment on how this solution compares to the usual estimate of the mean and variance using in introductory statistics.
	* Use `optim()` in R to find the MLE.
* Suppose that *Y* follows a uniform distribution from 0 to *u* and you observe *y = [1.5, 0.6, 1.2]*. What is the maximum likelihood estimate of *u*. Explain your answer.

## Quiz Questions

* For a given probability model *Y ~ f(y)*, derive the log-likelihood function and solve for the MLE.

### In Class

* Extend MLE to probability models with covariates.
* Derive estimates for MLE of normal-linear model. 
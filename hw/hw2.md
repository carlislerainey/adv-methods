Homework 2
==========

Due Wednesday, September 10.

## Maximum Likelihood Estimation

This week is probably the most important in the whole semester. There are two extremely general concepts we'll discuss this semester: maximum likelihood and simulation. These two ideas are extremely powerful and even more so when used together. It is crucial that you understand the key ideas of maximum likelihood estimation. I've given one medium-length reading this week. Please read it carefully.

* King, Gary. 2001. *Unifying Political Methodology: The Likelihood Theory of Statistical Inference.* University of Michigan Press. Chapters 1-4. [Dropbox]

* Suppose that *X* follows an exponential distribution and you observe *y = [1.5, 0.6, 1.2]*.
	* Derive the log-likelihood function.
	* Solve the log-likelihood function analytically (i.e., with calculus).
	* Use `optim()` in R to find the MLE.
* Suppose that *X* follows a normal distribution and you observe *y = [1.5, 0.6, 1.2]*.
	* Derive the log-likelihood function.
	* Solve the log-likelihood function analytically (i.e., with calculus). Comment on how this solution compares to the usual estimate of the mean and variance using in introductory statistics.
	* Use `optim()` in R to find the MLE.
* Suppose that *X* follows a uniform distribution from 0 to *u* and you observe *y = [1.5, 0.6, 1.2]*. What is the maximum likelihood estimate of *u*. Explain your answer.

## Quiz Questions

* For a given probability model *X ~ f(x)*, derive the log-likelihood function and solve for the MLE.

### In Class

* Extend MLE to probability models with covariates.


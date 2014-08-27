# Homework 1


## Foundational Tools

* Choose how you are going to version-control your files. I use Dropbox to sync my files across my iMac, MacBook, iPad, and iPhone and Git to version control everything. You need to have a strategy in place before you start the project. [This](http://academia.stackexchange.com/questions/5277/why-use-version-control-systems-for-writing-a-paper) stack-exchange answer might be helpful.
* Start to think about what paper you want to replicate. Try to have one or two picked out by the beginning of the next class so that we can begin to discuss them. The simpler the methods, the better. However, you need to use something beyond a linear-model for this class.
* If you want to participate in the daily writing group, come and see me.

## Math

Do this section by hand, but neatly. If it is not neat, I'll ask you to redo. You'll get one warning.

In general, you can review any mathematical concepts  you'll need using [Dave Siegel's videos](http://people.duke.edu/~das76/Mathematics%20for%20Political%20and%20Social%20Research%20Syllabus_Siegel.pdf). Use them as needed.

We'll spend a little time on the math in class, but I hope to devote most of the class to the probability theory. We covered most of the math in PSC 531, but make sure that you are up to speed.

### Matrices

* Review Hagle's *Concepts* (1995), chapter 6. Make sure you know what a matrix is (i.e., the notation), how to multiply them, and when you cannot multiply them.

### Differentiation

* Review Hagle's *Concepts* (1995), chapters 3 and 4. Make sure you know the power rule, the product rule, the quotient rule, and the chain rule. We didn't study each of these carefully in PSC 531, so review carefully. Pay especially close attention to the chain rule because it's tricky and important.
* *From Hagel's *Problems* (1995), section 5.3, **do** 5a-b, 6a-c, 7a-b. 

### Integration

* Read Hagel's *Concepts* (1995), chapter 5.
* From Hagel's *Problems* (1995), section 5.3, **do** 1a-e, 4a-c.

### Probability Theory

Write an R-markdown document that does this. Turn it into a pdf and print it out.

Our goal with these readings is to get a solid feel for concepts like "random variable" and "distribution." We'll want to connect the mathematical distribution function with the observed distributions (e.g., histogram) that we see in observed variables.

#### The Key Concepts

When reading DeGroot, note that he calls a cdf a "distribution function" and a pmf a "probability function." 

* Read DeGroot's *Probability and Statistics*, sections 1.1-1.5.
* **Do** exercises 1-3, section 1.5.
* Read DeGroot's *Probability and Statistics*, sections 1.10-1.11.
* **Do** exercise 1, section 1.10.
* **Do** exercise 1, section 1.11. This one is tricky. Just give it your best effort. I used facts from section 1.10 to do it, but there are probably other ways.
* Read DeGroot's *Probability and Statistics*, sections 2.1-2.2
* **Do** exercises 1-3, section 2.1. You should be able to just write down the answers to these if you understand the concepts.
* **Do** exercises 1 and 2, section 2.2. These require a little bit of algebra.
* Read DeGroot's *Probability and Statistics*, sections 3.1-3.3
* **Do** exercise 1, section 3.1. This require a little bit of algebra.
* **Do** exercise 1, section 3.2. This require a little integral calculus.
* **Do** exercises 1 and 2, section 3.3. This require a careful thought, but not much math.

#### Actual Distributions

* Read Fox's *Primer* (2009), sections 3.2.1, 3.2.3, 3.3.1, 3.3.6, 3.3.9.
* **Do** simulate from some of these random variables. Choose at least one discrete and one continuous random variable and print, say 10, random draws to get a feel for what the numbers look like. Then tabulate, say 1,000, draws to get a sense for what the distribution looks like. Then plot the distribution (bar plot for discrete, histogram for continuous). 
* **Do** graph some of these distribution functions in R. You should probably graph the discrete random variables as bar plots and the continuous random variables as line plots. Put several distributions on the same plot to get a sense of how the function changes as the parameters or family changes.
* **Do** study two distributions not covered in the readings (let's choose among negative binomial, geometric, hypergeometric, beta-binomial, Cauchy, double exponential, logistic, Weibull, log-normal, Pareto, gamma, Chi-squared, Student's *t*, *F*, multinomial). Wikipedia is great for this. 
	1. Make a note of the pmf/pdf.
	2. Describe the distribution parameters and describe how the distribution changes as the parameters increase or decrease. Be sure to note how the mean and variance change with the parameters. Does one parameter impact the mean and the other the variance? Does a single parameter impact the mean *and* the variance?
	3. Note if there is any intuitive "story" used to build the distribution (e.g., the memoryless property of the exponential distribution).
	4. Figure out how to simulate from your distribution in R (usually something like`rdist()`, such as `rnorm()`) and use the density function to plot the distribution (usually something like `ddist()`, such as `dnorm()`).
* Read Fox's *Primer* (2009), section 3.3.5. Think really hard about the difference between scalar random variables and vector random variables. Now think really hard about the difference between *k* scalar random variables and a vector random variable of length *k*. Is there any difference? If so, what is it?

## Quiz Questions

* Algebraically manipulate *log f(x)* into an equation involving the fewest possible products and powers, where *f(x)* has lots of products and powers.
* For given matrices A and B, find AB, BA, A + B, and A - B (if it exists)
* For a given *f* and *g*, find the derivative of *f(x)*, *g(x)*, *f(g(x))*, *f(x)g(x)*, and *f(x)/g(x)*, where *f* and *g* might be an exponential, logarithm, polynomial, or some combination. Illustrate graphically.
* Find the integral (definite and indefinite) for the *f(x)* and *g(x)* above. Illustrate graphically.

## Class Agenda

* Homework 1 due. There is a handwritten part with lots of math problems and a printed part that has computer code, output, and some discussion.
* Quiz 1. I'll choose a few representative questions from above. This should take about 15 minutes.
* Discuss the replication projects.
* Simulate from lots of different distributions in R and look at lots of histograms. We'll do this by having students show us their version of the probability theory homework.
* Compute the probability of specific, compound events (e.g., dice, coins, cards).
* Discuss how to compute the probability of events from pdfs and pmfs.
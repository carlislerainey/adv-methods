# Schedule

Some readings are available free on the web; I've linked to those. Other readings are not available freely on the web; I've tried to remove as many of those as possible. Those readings that are not freely available on the web can be found in our Dropbox folder with the convention `LastnameYear.pdf`.

## Week 1: Research in Practice

### Replication

* King, Gary. 1995. "[Replication, Replication](http://gking.harvard.edu/files/gking/files/replication.pdf)." *PS: Political Science and Politics.* (If interested, see this issue of *PS* for comments from 19 authors and a response.)
* King, Gary. 2006. "[Publication, Publication](http://gking.harvard.edu/files/gking/files/paperspub.pdf)." PS: Political Science and Politics 39: 119–125. 
* "[How to Persuade Journals to Accept Your Replication Paper](http://politicalsciencereplication.wordpress.com/2013/09/11/guest-blog-how-to-persuade-journals-to-accept-your-replication-paper/)." A blog post by Mark Bell and Nicholas Miller.

### Version-Control
 
* Bowers, Jake. [Six Steps to a Better Relationship with Your Future Self.](http://polmeth.wustl.edu/methodologist/tpm_v18_n2.pdf)
* Ram, Karthik. 2013. "[Git Can Facilitate Greater Reproducibility and Increased Transparency in Science](http://www.scfbm.org/content/pdf/1751-0473-8-7.pdf)." *Source Code for Biology and Medicine* 8:7.

### Actual Research

* "[My Paper's Journey Through the Review Process](https://pages.wustl.edu/nathanjensen/articles/6010)." A blog post by Nathan Jensen.
* "[William Shockley on What Makes a Person Who Publishes a Lot of Papers](http://dynamicecology.wordpress.com/2014/01/23/william-shockley-on-what-makes-a-person-write-a-lot-of-papers-and-the-superstar-researcher-system/)." A blog post by Brian McGill.

### LaTeX, Markdown, Git, R

We'll talk about these in class, so be sure to bring your computer and make sure that you have LaTeX, git, R, and RStudio installed. You can easily find the guides you need for your operating system with a quick Google search.

## Week 2: Mathematical Foundations

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

Our goal with these readings is to get a solid feel for concepts like "random variable" and "distribution." We'll want to connect the mathematical distribution function with the observed distributions (e.g., histogram) that we see in observed variables.

* Read Fox's *Primer* (2009), section 3.1. This is fairly dense material, but quite important. Take your time with it.
* **Do** simulate from some of these random variables. Choose at least one discrete and one continuous random variable and print, say 10, random draws to get a feel for what the numbers look like. Then tabulate, say 1,000, draws to get a sense for what the distribution looks like. Then plot the distribution (bar plot for discrete, histogram for continuous). 
* Read Fox's *Primer* (2009), sections 3.2.1, 3.2.3, 3.3.1, 3.3.6, 3.3.9.
* **Do** graph some of these distribution functions in R. You should probably graph the discrete random variables as bar plots and the continuous random variables as line plots. Put several distributions on the same plot to get a sense of how the function changes as the parameters or family changes.
* **Do** study two distributions not covered in the readings (let's choose among negative binomial, geometric, hypergeometric, beta-binomial, Cauchy, double exponential, logistic, Weibull, log-normal, Pareto, gamma, Chi-squared, Student's *t*, *F*, multinomial). Wikipedia is great for this. 
	1. Make a note of the pmf/pdf.
	2. Describe the distribution parameters and describe how the distribution changes as the parameters increase or decrease. Be sure to note how the mean and variance change with the parameters. Does one parameter impact the mean and the other the variance? Does a single parameter impact the mean *and* the variance?
	3. Note if there is any intuitive "story" used to build the distribution (e.g., the memoryless property of the exponential distribution).
	4. Figure out how to simulate from your distribution in R (usually something like`rdist()`, such as `rnorm()`) and use the density function to plot the distribution (usually something like `ddist()`, such as `dnorm()`).
* Read Fox's *Primer* (2009), section 3.3.5. Think really hard about the difference between scalar random variables and vector random variables. Now think really hard about the difference between *k* scalar random variables and a vector random variable of length *k*. Is there any difference? If so, what is it?

### In Class

* Simulate from lot's of different distributions in R and look at lots of scatterplots
*Compute the probability of specific, compound events (e.g., dice, coins, cards)
## Week 3: Maximum Likelihood Estimation

* King, Gary. 2001. *Unifying Political Methodology: The Likelihood Theory of Statistical Inference.* University of Michigan Press. Chapters 1-4.

### In Class

* Think about how we might go about climbing a hill using a computer algorithm. Perhaps we can actually implement something workable? 

## Binary Outcomes

* Long, J. Scott. 1997. *Regression Models for Categorical and Limited Dependent Variables.* Sage Publications. Chapter 3.
* Nagler, Jonathan. 1994. "Scobit: An Alternative Estimator to Logit and Probit." *American Journal of Political Science* 38: 230-255.
* King, Gary & Langche Zeng. 2001. "Logistic Regression in Rare Events Data." *Political Analysis* 12: 137-163.
* Zorn, Christopher. 2005. "A Solution to Separation in Binary Response Models." *Political Analysis* 13: 157-170.
* King, Gary, Michael Tomz, and Jason Wittenberg. 2000. "Making the Most of Statistical Analyses:Improving Interpretation and Presentation." *American Journal of Political Science* 44: 341-355.

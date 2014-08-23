# Schedule

Some readings are available free on the web; I've linked to those. Other readings are not available freely on the web; I've tried to remove as many of those as possible. Those readings that are not freely available on the web can be found in our Dropbox folder with the convention `LastnameYear.pdf`.

## Aug. 27: Research in Practice

Do Homework 0.

## Sept. 2: Mathematical Foundations

Do Homework 1.

## Sept. 9: Maximum Likelihood Estimation

Do Homework 2.

This week is probably the most important in the whole semester. There are two extremely general concepts we'll discuss this semester: maximum likelihood and simulation. These two ideas are extremely powerful and even more so when used together. It is crucial that you understand the key ideas of maximum likelihood estimation. I've given one medium-length reading this week. Please read it carefully.

* King, Gary. 2001. *Unifying Political Methodology: The Likelihood Theory of Statistical Inference.* University of Michigan Press. Chapters 1-4. [Dropbox]

### In Class

* Derive a likelihood function for a simple binomial model. Program this function in R. Produce some fake data (perhaps with dice). Plug in several values to find the one that produces the highest likelihood (i.e., a brute force search). Confirm answer using a plot of the likelihood function. Confirm answer using derivatives.
* Repeat for an exponential distribution.
* Think about how we might go about climbing a hill using a computer algorithm. Perhaps we can actually implement something workable? 
* Introduce and demonstrate the `optim()` function in R.

## Sept 16: Binary Outcomes

Do Homework 3.

**The Usual Logit or Probit**

* Long, J. Scott. 1997. *Regression Models for Categorical and Limited Dependent Variables.* Sage Publications. Chapter 3. [Dropbox]

**More Specialized Forms**

* Nagler, Jonathan. 1994. "[Scobit: An Alternative Estimator to Logit and Probit](http://www.nyu.edu/classes/nbeck/q2/nagler.scobit.pdf)." *American Journal of Political Science* 38: 230-255.
* King, Gary and Langche Zeng. 2001. "[Logistic Regression in Rare Events Data](http://gking.harvard.edu/files/0s.pdf)." *Political Analysis* 12: 137-163.
* Zorn, Christopher. 2005. "A Solution to Separation in Binary Response Models." *Political Analysis* 13: 157-170. [Gated](http://pan.oxfordjournals.org/content/13/2/157.full.pdf+html)

## Week 5: Quantities of Interest, Simulation, and Interaction

This is the second most important week of the whole semester.

**Quantities of Interest and Simulation**

* King, Gary, Michael Tomz, and Jason Wittenberg. 2000. "Making the Most of Statistical Analyses:Improving Interpretation and Presentation." *American Journal of Political Science* 44: 341-355.

**Logit Models and Interaction Terms**

* Nagler, Jonathan. 1991. "The Effect of Registration Laws and Education on U.S. Voter Turnout." *American Political Science Review* 85:1393-1405. [Gated](http://www.jstor.org/stable/1963952)
* Berry, William, Jacqueline H. R. DeMeritt, and Justin Esarey. 2010. "[Testing for Interaction in Binary Logit and Probit Models: Is a Product Term Essential?](http://mailer.fsu.edu/~wberry/garnet-wberry/berry%20ajps%20jan%202010.pdf)" *American Journal of Political Science* 54:248-266.
* Rainey, Carlisle. "[Compression and Conditional Effects](http://www.carlislerainey.com/files/compress.pdf)." Working paper.

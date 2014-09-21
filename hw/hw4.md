Homework 4
==========

Due Wednesday, September 24. Do all of this homework in R-markdown.

## Background Readng

The reading below (5.1) reviews what we did in class, (5.2) previews King, Tomz, and Wittenberg (2000), and (5.3) provides an alternative justification for the logit and probit models we talked about in class. Section 5.3 is most important, because it introduces a powerful framework for motivating the exact shape of the link function. This is important for the debate about the product terms, especially the ideas of latent variables and utility maximization.

* King, Gary. 1998. *Unifying Political Methodology.* Sections 5.1-5.3. Available in the Readings folder on Dropbox.

## Theory

1. Calculate the marginal effect of $x_1$ in the linear regression model $E(y) = \beta_0 + \beta_1 x_1 + \beta_2 x_2$. $x_1$ in the logistic regression model $Pr(y) = \Lambda(\beta_0 + \beta_1 x_1 + \beta_2 x_2$. 
2. Discuss the way in which these marginal effects depend on $x_1$ itself and also $x_2$.

## Computation

1. Write a function that takes a formula and a data set and estimates a logistic regression model. This will look a lot like the example we did in class, except the function should take `formula` and `data` as arguments rather than `X` and `y`. To make this happen, you'll need to turn `formula` and `data` into `X` and `y` in the first part of the function.


        logit <- function(formula, data) {   
          mf <- model.frame(formula, data) 
          y <- model.response(mf)
          X <- model.matrix(formula, data)
          ... [optim(), etc., here]
        }
      
2. Simulate some fake data and check that your function is working properly. Be sure to use multiple covariates and a large sample.
3. Modify your function to make it a probit model and change the name accordingly. Use your function to estimate a probit model on your fake logit data and compare the coefficients. The sign and significance should be the same and the logit coefficients should be about 1.6 times larger than the probit coefficients.

## Application

1. Read [Krupnikov (2011)](http://www.carlislerainey.com/am-files/papers/Krupnikov2011.pdf) to get a sense of her argument.
2. Use the `glm()` function to replicate Model 3 in her Table 4 using [her data](http://carlislerainey.com/am-files/data/krupnikov.csv). You can right-click the link and "Save As..." or you can load the data directly from my servers. I think the variable names in the data match the paper fairly well. (Use `names(data)` to see the variable names after loading the data into R.)
3. Use the `screenreg()` function in the `texreg` package to print the results. Note that you can also use the package to output nice tables from R to LaTeX and Word.
4. Notice that Krupnikov uses a lot of control variables. Check the robustness of her results to the exclusion of subsets of these controls. You can choose what to exclude. Discuss your findings and their implications. (Note that, for now, we are just interpreting the sign and significance of the logit coefficients).
5. Just for kicks, replicate her results with a probit model as well (use `family = binomial(link=probit)`). Notice that the logit coefficients are approximately 1.6 ($\pi^2/3$) times larger than the probit coefficients.

## Replications

Turn in a `.pdf` created in R-markdown that replicates the relevant tables from the paper. Include a screenshot of the coefficients from the paper and make sure they are printed in the `.pdf` code output using the `display()` function in the `arm` package.

## Readings 

### Simulation and Quantities of Interest

This is the most important idea we'll encounter this semester. (Maximum likelihood is a distant second, because you can use with without really understanding it.) We'll learn King, Tomz, and Wittenberg (2000) frontwards and backwards. These ideas play a big role in every paper I've ever written. They'll be crucial to your replication paper.

* King, Gary, Michael Tomz, and Jason Wittenberg. 2001. "[Making the Most of Statistical Analyses: Improving Interpretation and Presentation](http://www.carlislerainey.com/am-files/papers/KingTomzWittenberg2000.pdf)." *American Journal of Political Science* 44(2): 341-355. [Just skim the sections on multinomial logit and censored Weibull. You should read the rest *very* carefully.]

### Product Terms and Interaction

There is a long running debate in political science that is closely related to the first problem in this homework and King, Tomz, and Wittenburg (2000). In my view, the Berry, DeMeritt, and Esarey paper is an extremely important paper for those who plan to use logit/probit models in the future.

* Nagler, Jonathan. 1991. "[The Effect of Registration Laws and Education on U.S. Voter Turnout](http://www.carlislerainey.com/am-files/papers/Nagler1991.pdf)." *American Political Science Review* 85(4):1393-1405.
* Berry, William, Justin Esarey, and Jaqueline DeMeritt. 2010, "[Testing for Interaction in Binary Logit and Probit Models: Is a Product Term Essential?](http://www.carlislerainey.com/am-files/papers/BerryDeMerittEsarey2010.pdf)." *American Journal of Political Science* 54(1):248-266.
* Rainey, Carlisle. "[Compression and Conditional Effects](http://carlislerainey.com/papers/compress.pdf)." Working paper.

Write a short (i.e., 1-2 pages, double-spaced) summary of the debate, why you think there is disagreement, who you feel is right, etc. Try to have an original thought.

## Quiz Questions

* Calculate the marginal effect of a logit/probit model.
* Derive a maximum likelihood estimator for a logit/probit model.
* Describe the process that King, Tomz, and Wittenberg suggest using to obtain standard errors around quantities of interest. 
* Summarize what you feel is the key disagreement among the authors in the product term/logit model debate.
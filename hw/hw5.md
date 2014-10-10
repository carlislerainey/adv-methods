Homework 5
==========

Due Wednesday, October 1. Do all of this homework in R-markdown (or, if you prefer, a neatly-formatted Word document). Don't just give a lot of code or math. Explain the code, math, and output in **words**.

## Background Reading

Have a second look at [Berry, DeMeritt, and Esarey (2010)](http://www.carlislerainey.com/am-files/papers/BerryDeMerittEsarey2010.pdf) (BDE). You'll spend this homework thinking about their results. Let's suppose you buy [my argument](http://www.carlislerainey.com/papers/compress.pdf) that it is important that BDE include the product terms and focus on the model *including* product terms.

## Theory

1. Write down the statistical model that BDE use in Model 1 of their Table 1 using whatever notation you prefer. The point is to take their variables and put them into the equation that they use. (Hint: [King, Tomz, and Wittenberg (2000)](http://www.carlislerainey.com/am-files/papers/KingTomzWittenberg) offer a nice example--look at how they name their variables in the text.) In any case, balance compactness and clarity and make it look good. For example, $Pr(\text{Vote}_i = 1) = \text{logit}^{-1}(\beta_{cons} + \beta_{date} \text{Closing Date}_i + ...$)
2. Find the derivative of the probability of voting w.r.t. the closing date variable. 
3. Describe what this quantity would tell us if we filled in the $\beta$'s and evaluated the derivative at a specific $X = X_c$.

## Computation

Write a function that takes a model object (e.g., `m`, where `m <- glm(...)`) and the number of simulations $n_{sims}$ as arguments and returns an $n_{sims} \times k$ matrix of coefficients simulated from the "posterior" distribution, where each row is one simulation of the parameter vector from the "posterior". Note that this only requires a small modification of the code found in the [notes on simulation](http://www.carlislerainey.com/am-files/notes/sim.pdf). For convenience, you can use this function in the application below.

Hint: You'll just be creating a function `sim()` that does

    beta.hat <- coef(m)
    Sigma.hat <- vcov(m)
    beta.tilde <- mvrnorm(n.sims, beta.hat, Sigma.hat)
    
with just `beta.tilde <- sim(1000, m)`.

## Application

The application below asks you to calculate several quantities of interest. To do this, you'll need to select several substantively interesting high and low values of particular variables. Be sure to explain why you made these choices. Also, notice that they use a probit model.

1. Replicate BDE's results using [their data](http://www.carlislerainey.com/am-files/data/bde.dta). You can just use the code below.
           
        # load packages
        library(foreign)

        # load data
        d <- read.dta("http://crain.co/am-files/data/bde.dta")

        # drop the -1's (I'm not sure what they mean)
        d <- d[d$newvote != -1, ]

        # estimate the model
        m <- glm(newvote ~ closing + neweduc + educ2 + 
                   age + age2 + south + gov + cloeduc + cloeduc2, 
                 family = binomial(link = "probit"), data = d)

2. Calculate the MLE of the change in the probability of voting as the closing date moves from a **low** value to a **high** value when education is at a **low** value. Also calculate the 90% confidence interval.
3. Calculate the MLE of the change in the probability of voting as the closing date moves from a **low** value to a **high** value when education is at a **high** value. Also calculate the 90% confidence interval.
4. Calculate the difference between these two first differences (i.e., a second-difference) and find the confidence interval.
5. In light of these quantities of interest, make a substantive point and discuss it in about one paragraph.
6. Lastly, compute the same second-difference using a logit model and note how the point estimate and confidence interval for the quantity of interest changes.

## Readings

The readings below present five extensions of the standard logit or probit model. Just skim the substantive sections to get a feel for the problem, but read the methods and results sections more carefully.

### Scobit

* Nagler, Jonathan. 1994. "[Scobit: An Alternative Estimator to Logit and Probit](http://www.carlislerainey.com/am-files/papers/Nagler1994.pdf)." *American Journal of Political Science* 38: 230-255.

### Rare-events logit

* King, Gary and Langche Zeng. 2001. "[Logistic Regression in Rare Events Data](http://www.carlislerainey.com/am-files/papers/KingZeng2001.pdf)." *Political Analysis* 12: 137-163.

### Partial observability models (i.e., split-population models)

* Xiang, Jun. 2001. "[Relevance as a Latent Variable in Dyadic Analysis of Conflict](http://www.carlislerainey.com/am-files/papers/Xiang2010.pdf)." *Journal of Politics* 72(2): 484-498.

### Heteroskedastic probit

* Alvarez, R. Michael and John Brehm. 1995. "[American Ambivalence Toward Abortion Policy: Development of a Heteroskedastic Probit Model of Competing Values](http://www.carlislerainey.com/am-files/papers/AlvarezBrehm1995.pdf)." *American Journal of Political Science* 39(4): 1055-1082.

### Dynamic probit (i.e., Markov transition model)

* Ahlquist, John and Erik Wibbels. 2012. "[Riding the Wave: World Trade and Factor-Based Models of Democratization](http://www.carlislerainey.com/am-files/papers/AhlquistWibbels2012.pdf)." *American Journal of Political Science* 56(2): 447-464.

Notice the quantities of interest that each of these authors report. What could be improved?

## Quiz Questions

* Describe in detail how to calculate a first-difference, second-difference, and risk-ratio.
* Describe how to find the marginal effect.
* Describe in detail how to obtain confidence intervals for the quantities of interest above.
* Describe the basic form of the models laid out in the readings.
* Sketch the five models discussed in the readings.
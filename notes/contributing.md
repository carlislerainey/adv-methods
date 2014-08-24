# Contributing to the Notes

To contribute to the notes, simply pull down the GitHub repository into whatever directory you choose. Mine is in a directory called `classes`.

    git pull git@github.com:carlislerainey/adv-methods.git
    
All the notes are written in R-Markdown, so open up RStudio and click File, New..., R Markdown.

It is a little tricky to get the working directories to work properly. To do so, you need to add the following code to the beginning of the R-Markdown document.

    ```{r global_options, include=FALSE}
    library(knitr)
    wd <- normalizePath("../../")
    opts_knit$set(fig.width=5, fig.height=5, fig.path='fig/',
               echo=FALSE, warning=FALSE, message=FALSE,
               root.dir=wd)
    ```
    
You'll then need to set the working directory to the `adv-methods` directory using something like...

   setwd("~/Dropbox/classes/adv-methods")
   
Everything should be set for you to start writing your notes.

For each model you discuss, you should have the following.

1. Add an example data set or two to the `data` directory. Browse recent journal articles with posted replication data, other methods classes, etc. Add a short description of the data set to the file `data/data-descriptions.md`.
2. Write down the complete probability model and be sure to include any motivating theory (e.g., random utility interpretations).
3. Write down the log-likelihood, including the derivation from the probability model.
4. Write down the marginal effects.
5. Provide R code to at least do the following:
  * Simulate fake data.
  * Estimate the model using real data.
  * Simulate the model coefficients.
  * Compute *E(Y)* and *dE(Y)/dX* for a range of X and plots with confidence intervals.
  * Compute a first difference and confidence intervals.
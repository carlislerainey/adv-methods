# load packages
library(foreign)  # for read.dta()
library(arm)  # for display()

# load data
fl <- read.dta("http://crain.co/am-files/data/fearon-laitin.dta")

# something weird is going on
table(fl$onset)  # wtf?
fl$onset[fl$onset == 4] <- 1 # recode weird case

# estimate model
m <- glm(onset~ warl + gdpenl + lpopl1 + 
           lmtnest + ncontig + Oil + nwstate + 
           instab + polity2l + ethfrac + relfrac, 
         family = binomial, data = fl)

# display estimates
display(m) # replicated!
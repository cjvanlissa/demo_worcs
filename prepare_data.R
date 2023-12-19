# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
n = 100
set.seed(1)
predictors <- data.frame(hpa = rnorm(n, mean =  -1.81, sd = 5.49),
                         oLTV = ordered(sample.int(10, n, replace = TRUE)))
contrasts(predictors$oLTV) <- contr.treatment(10)
X <- model.matrix(~., predictors)[, -1]
LGD <- X %*% c(-.337, -.008, -.007, .031, .091, .119, .144, .196, .316, .626) + rnorm(n)
lgd <- data.frame(predictors, LGD = LGD)
open_data(lgd)

# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
lgd <- read.csv("lgd.csv")
lgd$oLTV <- ordered(lgd$oLTV, levels = c('oLTV≤50%', '50%<oLTV≤70%', '70%<oLTV≤80%', '80%<oLTV≤90%', '90%<oLTV<100%', 'oLTV=100%', '100%<oLTV≤110%', '110%<oLTV≤120%', '120%<oLTV≤150%', 'oLTV>150%'))
open_data(lgd)

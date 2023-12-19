MOCK: The determinants of the loss given default of residential mortgage
loans in Portugal
================
19 December, 2023

This toy example is based on the working paper entitled “The
determinants of the loss given default of residential mortgage loans in
Portugal”, by Ângelo Ramos and Márcio Mateus of the Banco de Portugal,
2023.

<https://www.bportugal.pt/en/paper/determinants-loss-given-default-residential-mortgage-loans-portugal>

This manuscript uses the Workflow for Open Reproducible Code in Science
(Van Lissa et al. 2021) to ensure reproducibility and transparency. All
code <!--and data--> are available at \<git@\[…\].git\>.

This is an example of a non-essential citation (Van Lissa et al. 2021).
If you change the rendering function to `worcs::cite_essential`, it will
be removed.

<!--The function below inserts a notification if the manuscript is knit using synthetic data. Make sure to insert it after load_data().-->

## GitHub Documents

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.

## Including Code

You can include R code in the document as follows:

``` r
contrasts(lgd$oLTV) <- contr.treatment(10)
res <- lm(LGD ~ ., lgd)
tab_coef <- summary(res)$coefficients
colnames(tab_coef) <- c("Est", "SE", "t", "p")
tab_coef[,] <- round(tab_coef, 2)
tab_coef <- data.frame(Parameter = rownames(tab_coef), tab_coef)
write.csv(tab_coef, "tab_coef.csv", row.names = FALSE)
```

## Results

Below is a table of results:

``` r
tab_coef <- read.csv("tab_coef.csv")
knitr::kable(tab_coef, digits = 2)
```

| Parameter   |   Est |   SE |       t |    p |
|:------------|------:|-----:|--------:|-----:|
| (Intercept) |  0.02 | 0.03 |    0.85 | 0.40 |
| hpa         | -0.34 | 0.00 | -207.96 | 0.00 |
| oLTV2       | -0.02 | 0.04 |   -0.46 | 0.65 |
| oLTV3       |  0.02 | 0.04 |    0.44 | 0.66 |
| oLTV4       |  0.00 | 0.04 |   -0.02 | 0.98 |
| oLTV5       |  0.08 | 0.04 |    2.00 | 0.05 |
| oLTV6       |  0.09 | 0.04 |    2.14 | 0.03 |
| oLTV7       |  0.11 | 0.04 |    2.72 | 0.01 |
| oLTV8       |  0.17 | 0.04 |    4.29 | 0.00 |
| oLTV9       |  0.28 | 0.04 |    6.99 | 0.00 |
| oLTV10      |  0.62 | 0.04 |   15.44 | 0.00 |

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-vanlissaWORCSWorkflowOpen2021" class="csl-entry">

Van Lissa, Caspar J., Andreas M. Brandmaier, Loek Brinkman, Anna-Lena
Lamprecht, Aaron Peikert, Marijn E. Struiksma, and Barbara M. I. Vreede.
2021. “WORCS: A Workflow for Open Reproducible Code in Science.” *Data
Science* 4 (1): 29–49. <https://doi.org/10.3233/DS-210031>.

</div>

</div>

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

| Parameter   |   Est |   SE |      t |    p |
|:------------|------:|-----:|-------:|-----:|
| (Intercept) |  0.10 | 0.33 |   0.31 | 0.75 |
| hpa         | -0.33 | 0.02 | -15.43 | 0.00 |
| oLTV2       | -0.94 | 0.50 |  -1.89 | 0.06 |
| oLTV3       |  0.03 | 0.52 |   0.05 | 0.96 |
| oLTV4       | -0.15 | 0.44 |  -0.35 | 0.73 |
| oLTV5       |  0.11 | 0.43 |   0.25 | 0.80 |
| oLTV6       |  0.42 | 0.52 |   0.81 | 0.42 |
| oLTV7       |  0.40 | 0.62 |   0.64 | 0.52 |
| oLTV8       |  0.39 | 0.46 |   0.84 | 0.40 |
| oLTV9       |  0.08 | 0.43 |   0.18 | 0.86 |
| oLTV10      |  0.12 | 0.46 |   0.27 | 0.79 |

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-vanlissaWORCSWorkflowOpen2021" class="csl-entry">

Van Lissa, Caspar J., Andreas M. Brandmaier, Loek Brinkman, Anna-Lena
Lamprecht, Aaron Peikert, Marijn E. Struiksma, and Barbara M. I. Vreede.
2021. “WORCS: A Workflow for Open Reproducible Code in Science.” *Data
Science* 4 (1): 29–49. <https://doi.org/10.3233/DS-210031>.

</div>

</div>

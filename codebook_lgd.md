Codebook created on 2023-12-19 at 2023-12-19 13:18:43.567837
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 100 cases and 3 variables.

## Codebook

| name | type            |   n | missing | unique |  mean | median |  mode | mode_value |   sd |    v |    min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-----|:----------------|----:|--------:|-------:|------:|-------:|------:|-----------:|-----:|-----:|-------:|------:|------:|------:|---------:|------:|---------:|
| hpa  | numeric         | 100 |       0 |    100 | -1.21 |  -1.18 | -1.18 |            | 4.93 |      | -13.97 | 11.37 | 25.34 | -0.07 |    -0.15 | -0.05 |    -0.05 |
| oLTV | ordered, factor | 100 |       0 |     11 |       |        | 15.00 |          5 |      | 0.89 |        |       |       |       |          |       |          |
| LGD  | numeric         | 100 |       0 |    100 |  0.54 |   0.61 |  0.61 |            | 1.94 |      |  -3.82 |  6.16 |  9.98 |  0.19 |     0.40 | -0.33 |    -0.35 |

### Legend

- **Name**: Variable name
- **type**: Data type of the variable
- **missing**: Proportion of missing values for this variable
- **unique**: Number of unique values
- **mean**: Mean value
- **median**: Median value
- **mode**: Most common value (for categorical variables, this shows the
  frequency of the most common category)
- **mode_value**: For categorical variables, the value of the most
  common category
- **sd**: Standard deviation (measure of dispersion for numerical
  variables
- **v**: Agresti’s V (measure of dispersion for categorical variables)
- **min**: Minimum value
- **max**: Maximum value
- **range**: Range between minimum and maximum value
- **skew**: Skewness of the variable
- **skew_2se**: Skewness of the variable divided by 2\*SE of the
  skewness. If this is greater than abs(1), skewness is significant
- **kurt**: Kurtosis (peakedness) of the variable
- **kurt_2se**: Kurtosis of the variable divided by 2\*SE of the
  kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)

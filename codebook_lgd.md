Codebook created on 2023-12-19 at 2023-12-19 13:23:08.160165
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 12777 cases and 3 variables.

## Codebook

| name | type            |     n | missing | unique |  mean | median |    mode | mode_value    |   sd |   v |    min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-----|:----------------|------:|--------:|-------:|------:|-------:|--------:|:--------------|-----:|----:|-------:|------:|------:|------:|---------:|------:|---------:|
| hpa  | numeric         | 12777 |       0 |  12777 | -1.86 |  -1.91 |   -1.91 |               | 5.52 |     | -25.43 | 19.11 | 44.54 | -0.01 |    -0.18 | -0.03 |    -0.35 |
| oLTV | ordered, factor | 12777 |       0 |     11 |       |        | 1320.00 | 80%\<oLTV≤90% |      | 0.9 |        |       |       |       |          |       |          |
| LGD  | numeric         | 12777 |       0 |  12777 |  0.78 |   0.79 |    0.79 |               | 2.12 |     |  -6.69 | 10.03 | 16.73 |  0.03 |     0.77 | -0.02 |    -0.24 |

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


<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggraincloud

<!-- badges: start -->

[![R-CMD-check](https://github.com/bradfordjohnson/ggraincloud/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/bradfordjohnson/ggraincloud/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

**ggraincloud** is an R package that provides templated raincloud plots
using the grammar of graphics with `ggplot2`. It streamlines the
creation of visually appealing raincloud plots, combining density plots,
boxplots, and scatter plots for enhanced data visualization. Perfect for
users looking to create consistent and customizable raincloud plots
efficiently.

## Installation

You can install the development version of ggraincloud from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("bradfordjohnson/ggraincloud")
```

## Example

Create a raincloud plot using `raincloud()`.

``` r
library(ggraincloud)

raincloud(iris, ggplot2::aes(Species, Sepal.Width), flip_coords = TRUE) +
  ggplot2::theme_minimal()
```

![](man/figures/README-example-1.png)<!-- -->

``` r

raincloud(
  iris,
  ggplot2::aes(
    Species,
    Sepal.Width,
    color = Species,
    fill = Species
  ),
  alpha = .5,
  flip_coords = FALSE
) +
ggplot2::theme_minimal()
```

![](man/figures/README-example-2.png)<!-- -->

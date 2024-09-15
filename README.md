
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggraincloud

<!-- badges: start -->
<!-- badges: end -->

The goal of ggraincloud is to …

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

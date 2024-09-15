
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

## Examples

Create a raincloud plot using `raincloud()` and optionally style it with
`theme_raincloud()`.

``` r
library(ggraincloud)

plot <- raincloud(iris, ggplot2::aes(Species, Sepal.Width), flip_coords = TRUE) +
  theme_raincloud(flip_coords = TRUE)

plot
```

![](man/figures/README-example-1.png)<!-- -->

Since the raincloud functions return a ggplot2 object, you can easily
customize the plot by adding additional ggplot2 layers and functions.

``` r
plot +
  ggplot2::theme_void()
```

![](man/figures/README-theme_void-1.png)<!-- -->

You can place the “rain” (jittered points) inside the boxplot using
`raincloud_boxjitter()`.

``` r
raincloud_boxjitter(
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
theme_raincloud()
```

![](man/figures/README-boxjitter-1.png)<!-- -->

## Acknowledgments

The `ggraincloud` package was inspired by the work of [Cédric
Scherer](https://www.cedricscherer.com/). His shared code snippets and
creative variations of raincloud plots in R sparked the idea to develop
this package, making it easier to quickly create raincloud plots using
ggplot2. A huge thanks to Cédric for his invaluable contributions to the
R and data visualization community!

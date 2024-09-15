#' raincloud_boxjitter
#'
#' ggplot2 raincloud plot template with the "rain" inside the boxplot.
#'
#' @param data Default dataset to use for plot.
#' @param mapping Default list of aesthetic mappings to use for plot.
#' @param flip_coords Default orientation is vertical (FALSE),
#' set to TRUE for horizontal.
#'
#' @param ... Additional parameters.
#'
#' @return Returns a raincloud ggplot.
#'
#' @examples
#' # Example usage of the function
#' plot <- raincloud_boxjitter(iris, ggplot2::aes(Species, Sepal.Width))
#'
#' @import ggplot2
#' @import ggforce
#' @import ggdist
#' @import gghalves
#'
#' @export
raincloud_boxjitter <- function(data, mapping, flip_coords = FALSE, ...) {

  plot <- ggplot2::ggplot(data, mapping) +
    ggdist::stat_halfeye(
      adjust = .5,
      width = .7,
      .width = 0,
      justification = -.2,
      point_colour = NA,
      ...
    ) +
    ggplot2::geom_boxplot(width = .2, outlier.shape = NA, ...) +
    ggplot2::geom_jitter(width = .05, alpha = .3)

  if (flip_coords) {
    plot <- plot + ggplot2::coord_flip(xlim = c(1, NA), clip = "off")
  }

  return(plot)
}

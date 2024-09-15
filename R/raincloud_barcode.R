#' raincloud_barcode
#'
#' ggplot2 raincloud plot template with a barcode instead of points.
#'
#' @param data Default dataset to use for plot.
#' @param mapping Default list of aesthetic mappings to use for plot.
#' @param barcode_size Size of barcode marks; defaults to 15.
#' @param flip_coords Default orientation is vertical (FALSE),
#' set to TRUE for horizontal.
#'
#' @param ... Additional parameters.
#'
#' @return Returns a raincloud ggplot.
#'
#' @examples
#' # Example usage of the function
#' plot <- raincloud_barcode(iris, ggplot2::aes(Species, Sepal.Width))
#'
#' @import ggplot2
#' @import ggforce
#' @import ggdist
#' @import gghalves
#'
#' @export
raincloud_barcode <- function(data, mapping, barcode_size = 15, flip_coords = FALSE, ...) {

  plot <- ggplot2::ggplot(data, mapping) +
    ggdist::stat_halfeye(
      adjust = .5,
      width = .3,
      .width = 0,
      justification = -.3,
      point_colour = NA,
      ...
    ) +
    ggplot2::geom_boxplot(width = .1, outlier.shape = NA, ...) +
    gghalves::geom_half_point(
      side = "l",
      range_scale = 0,
      shape = 95,
      size = barcode_size,
      alpha = .3,
      ...
    )

  if (flip_coords) {
    plot <- plot + ggplot2::coord_flip(xlim = c(1, NA), clip = "off")
  }

  return(plot)
}

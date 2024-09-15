#' theme_raincloud
#'
#' ggplot2 raincloud plot theme based on ggplot2::theme_minimal().
#'
#' @param flip_coords Default orientation is vertical (FALSE),
#' set to TRUE for horizontal.
#'
#' @param ... Additional parameters.
#'
#' @return Returns a raincloud ggplot.
#'
#' @examples
#' # Example usage of the function
#' plot <- raincloud(iris, ggplot2::aes(Species, Sepal.Width)) +
#' theme_raincloud()
#'
#' @import ggplot2
#'
#' @export
theme_raincloud <- function(flip_coords = FALSE, ...) {
  if (flip_coords) {
    return(
      theme_minimal() +
      theme(
        panel.grid.major.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        ...
      )
    )
  }
  return(
    theme_minimal() +
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      ...
    )
  )
}

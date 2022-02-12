#' An Nintendo-inspired color palette generator
#'
#' @description
#' Add Nintendo-inspired color palettes to your plots.
#' If you have a specific game you'd like to request, DM me on Twitter @jrosecalabrese.
#'
#' @param name Name of color palette. Please see `joycon_list` for the full list.
#'
#' @param n Number of colors needed.
#'
#' @param type Continuous or discrete.
#'
#' @export
joycon_pal <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  pal <- joycon_palettes[[name]]

  if (is.null(pal))
    stop("An error has occurred.
         Hold down the POWER Button to turn off the power,
         then try typing the palette name again.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("An error has occurred.
         Hold down the POWER Button to turn off the power,
         then try selecting a palette that contains more colors.")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, border = NA, col = rgb(1, 1, 1, 0.5))
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 3, family = "mono")
}

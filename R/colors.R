#' Palettes inspired by Nintendo.
#'
#'Color options include: \code{supermario}, \code{skywardsword}, \code{starbits},
#'\code{newhorizons}, \code{rainbowroad}, \code{splatoon},
#'\code{yoshi}, \code{isabelle}, \code{kirby},
#'\code{midna}, \code{korok}, \code{majora},
#'\code{samus}, \code{delfino}, and \code{hyrule}.
#'
#' @export
joycon_palettes <- list(
  # Palettes with five colors each
  supermario = c("#E4000F", "#049CD8", "#FBD000", "#43B047", "#000000"),
  skywardsword = c("#506538", "#D4AF37", "#7bdfd0", "#67c0fc", "#6b5ab6"),
  starbits = c("#ffe668", "#b9ff84", "#e560f9", "#7890d8", "#e36f46"),
  newhorizons = c("#c47636", "#f1bf2c", "#3fc3d8", "#02a47b", "#eca759"),
  rainbowroad = c("#ff1903", "#ff1eed", "#1e24ef", "#12e2ec", "#1afc07"),
  splatoon = c("#fa3296", "#aadc00", "#f75900", "#00c8b4", "#c800dc"),
  yoshi = c("#3b9e29", "#9ff576", "#f2ede9", "#f06a6b", "#f67d60"),
  isabelle = c("#d9cc78", "#22382c", "#ecefd7", "#dda30f", "#8f261f"),
  kirby = c("#ea86ab", "#17193e", "#9c162b", "#d12c54", "#f9d2ef"),
  # Palettes with eight colors each
  midna = c("#2a2a21", "#ecc944", "#966d27", "#99ae97", "#61705f", "#658e96", "#bf6b15", "#43585f"),
  korok = c("#5d5536", "#d1ac9e", "#a3ac89", "#958879", "#925f4e", "#5b211e", "#78875c", "#9f9fa0"),
  majora = c("#351a2a", "#ce4ecb", "#e8c2a6", "#9b322d", "#7a4fb0", "#dc94e7", "#1a67aa", "#19a165"),
  samus = c("#344f58", "#b17340", "#7d3920", "#e8d873", "#ba9a8f", "#ef9a59", "#6f5d3b", "#4bb7b9"),
  delfino = c("#2ab173", "#e3decc", "#80c043", "#6eba88", "#8e583e", "#c19f6f", "#214637", "#ab959c"),
  hyrule = c("#5ab5f5", "#727f34", "#26311e", "#b4e4f3", "#2380fa", "#2c6fb4", "#b5af3e", "#aac466"))
#'
#' An Nintendo-inspired color palette generator
#'
#' This includes palettes inspired by Nintendo games. If you have a specific game you'd like to request, DM me on Twitter @jrosecalabrese.
#'
#'@param name Name of color palette. Options are: \code{supermario}, \code{skywardsword}, \code{starbits},
#'\code{newhorizons}, \code{rainbowroad}, \code{splatoon},
#'\code{yoshi}, \code{isabelle}, \code{kirby},
#'\code{midna}, \code{korok}, \code{majora},
#'\code{samus}, \code{delfino}, and \code{hyrule}.
#'
#'@param n Number of colors needed.
#'
#'@param type Continuous or discrete.
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

  if (n > length(pal)) {
    stop("An error has occurred.
         Hold down the POWER Button to turn off the power,
         then try selecting a palette that contains more colors.")
  }

  out <- switch(type,
                continuous = colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

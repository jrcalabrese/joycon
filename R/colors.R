#' Palettes inspired by Nintendo.
#'
#'Color options include: \code{supermario}, \code{skywardsword}, \code{starbits},
#'\code{newhorizons}, \code{rainbowroad}, \code{splatoon},
#'\code{yoshi}, \code{isabelle}, \code{kirby}, \code{twilightprincess}, \code{wiisports},
#'\code{korok}, \code{majora}, \code{duckhunt}, \code{littlemac},
#'\code{samus}, \code{delfino}, and \code{hyrule}.
#'
#' @export
joycon_palettes <- list(
  # Palettes with three colors each
  kirby = c("#fda5cd", "#44b0ee", "#fb66ae"),
  yoshi = c("#6fe46b", "#fe8c50", "#fb4933"),
  littlemac = c("#686a67", "#90e26f", "#1f6720"),
  # Palettes with five colors each
  supermario = c("#e4000f", "#049cd8", "#fbd000", "#43b047", "#000000"),
  skywardsword = c("#506538", "#d4af37", "#7bdfd0", "#67c0fc", "#6b5ab6"),
  starbits = c("#ffe668", "#b9ff84", "#e560f9", "#7890d8", "#e36f46"),
  newhorizons = c("#c47636", "#eca759", "#f1bf2c", "#3fc3d8", "#02a47b"),
  rainbowroad = c("#ff1903", "#ff1eed", "#1e24ef", "#12e2ec", "#1afc07"),
  splatoon = c("#fa3296", "#f75900", "#aadc00", "#00c8b4", "#c800dc"),
  isabelle = c("#ffaa55", "#ab4a3b", "#a2b0ac", "#808000", "#ffff80"),
  wiisports = c("#37743a", "#88B63A", "#45a7c7", "#a48e60", "#ececef"),
  twilightprincess = c("#846048", "#3e877a", "#698454", "#c098b6", "#783a77"),
  delfino = c("#00d5d3", "#0080de", "#fdbc67", "#fbe9b9", "#da6a44"),
  samus = c("#77d9e2", "#fdb043", "#a73941", "#419a8e", "#c4ee89"),
  duckhunt = c("#c94b04", "#f97661", "#3dc0ff", "#82d30c", "#005909"),
  princesspeach = c("#ffb3e2", "#fe89a8", "#f15980", "#f8e31f", "#54c5f8"),
  # Palettes with eight colors each
  korok = c("#5d5536", "#d1ac9e", "#a3ac89", "#958879", "#925f4e", "#5b211e", "#78875c", "#9f9fa0"),
  majora = c("#59a91d", "#724ace", "#c401d1", "#007879", "#800000", "#ffcc33", "#0098ef", "#ff5f51"),
  hyrule = c("#5ab5f5", "#727f34", "#26311e", "#b4e4f3", "#2380fa", "#2c6fb4", "#b5af3e", "#aac466"))
#'
#' An Nintendo-inspired color palette generator
#'
#' This includes palettes inspired by Nintendo games. If you have a specific game you'd like to request, DM me on Twitter @jrosecalabrese.
#'
#'@param name Name of color palette.
#'Palettes include: \code{supermario}, \code{skywardsword}, \code{starbits},
#'\code{newhorizons}, \code{rainbowroad}, \code{splatoon},  \code{princesspeach},
#'\code{yoshi}, \code{isabelle}, \code{kirby}, \code{twilightprincess}, \code{wiisports},
#'\code{korok}, \code{majora}, \code{duckhunt}, \code{littlemac},
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

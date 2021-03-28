#' Look at these nice colors.
#'
#' I need to fix that function and add an actual description later.
#'
#' @export
joycon_palettes <- list(
  supermario = c("#E4000F", "#049CD8", "#FBD000", "#43B047", "#000000"),
  skywardsword = c("#506538", "#D4AF37", "#7bdfd0", "#67c0fc", "#6b5ab6"),
  starbits = c("#ffe668", "#b9ff84", "#e560f9", "#7890d8", "#e36f46"),
  newhorizons = c("#c47636", "#f1bf2c", "#3fc3d8", "#02a47b", "#eca759"),
  rainbowroad = c("#ff1903", "#ff1eed", "#1e24ef", "#12e2ec", "#1afc07"),
  splat = c("#fa3296", "#aadc00", "#f75900", "#00c8b4", "#c800dc"),
  yoshi = c("#3b9e29", "#9ff576", "#f2ede9", "#f06a6b", "#f67d60")
)
#' This function is terrible.
#' @export
joycon_pal <- function(name, n, type = c("discrete", "continuous")) {
  pal <- joycon_palettes[[name]]
}

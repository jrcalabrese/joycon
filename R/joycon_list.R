#' List of Nintendo-inspired palettes available.
#'
#' @description Palettes are available in three, five, and eight colors.
#'
#' Use `joycon_list` to see all palettes available. Can add additional palettes upon request.
#'
#' @export
joycon_list <- function(){

  list <- names(joycon_palettes)

  return(list)
}

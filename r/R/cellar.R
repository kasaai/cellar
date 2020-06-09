#' Pull a Dataset from Cellar
#'
#' @param dataset Name of the dataset.
#' @param vintage Desired vintage; defaults to the current release.
#' @export
cellar_pull <- function(dataset, vintage = NULL) {
  pins::board_register_datatxt("http://data.cellar.kasa.ai", name = "cellar")
  pins::pin_get(dataset, board = "cellar", version = vintage)
}

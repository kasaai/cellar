#' Pull a Dataset from Cellar
#'
#' @param dataset Name of the dataset.
#' @export
cellar_pull <- function(dataset) {
  pins::board_register_datatxt("cellar", "https://cellar.kasa.ai")
  pins::pin_get(dataset, board = "cellar")
}

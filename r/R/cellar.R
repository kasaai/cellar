#' Pull a Dataset from Cellar
#'
#' @param dataset Name of the dataset.
#' @export
cellar_pull <- function(dataset) {
  pins::board_register_datatxt("https://cellar.kasa.ai", name = "cellar")
  pins::pin_get(dataset, board = "cellar")
}

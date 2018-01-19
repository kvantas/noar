

#' Get latest observations from weather stations
#'
#' @return a tibble
#' @export noa_get_latest
#'
#' @examples
#'
#' library(tibble)
#' noa_get_latest()
noa_get_latest <- function() {

  noa_path <- "observationsFull.cfm"
  noa_url <- httr::modify_url("http://www.meteo.gr/", path = noa_path)

  test_url(noa_url)

  html <- xml2::read_html(noa_url, encoding = "UTF-8")
  tables <- rvest::html_nodes(html, "table")
  obs_table <- rvest::html_table(tables[1], fill = TRUE)[[1]]
  tibble::as.tibble(obs_table)

}

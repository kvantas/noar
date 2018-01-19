

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
  obs_table <- trasnlit_all(obs_table)

  # translate columns names
  if (length(names(obs_table)) == 10){
    names(obs_table) <- c("station", "time", "temperature", "wind_speed",
                          "humidity", "pressure", "wind_speed_max",
                        "temp_low", "temp_high", "precipitation")
  }

  tibble::as.tibble(trasnlit_all(obs_table))

}

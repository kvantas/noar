

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

  ## read links
  links <- noa_url magrittr::`%>%`
    rvest::html_nodes("td:nth-child(1) a") %>% html_attr("href")
  links <- links[grep("http", links)]

  ## read tables
  html <- xml2::read_html(noa_url, encoding = "UTF-8")
  tables <- rvest::html_nodes(html, "table")
  obs_table <- rvest::html_table(tables[1], fill = TRUE)[[1]]
  obs_table <- trasnlit_all(obs_table)

  ## read links
  links_nodes <- html_nodes("td:nth-child(1) a")
  links <- html_attr(links_nodes, "href")
  links <- links[grep("http", links)]

  ## translate columns names
  if (length(names(obs_table)) == 10){
    names(obs_table) <- c("station", "time", "temperature", "wind_speed",
                          "humidity", "pressure", "wind_speed_max",
                        "temp_low", "temp_high", "precipitation")
  }

  ## translit and add links
  obs_table <- trasnlit_all(obs_table)

  if(length(links) == NROW(obs_table)) {
    obs_table$urls <- links
  }
  tibble::as.tibble(obs_table)

}

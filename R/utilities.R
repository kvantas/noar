# use GET to test availibility of an url from meteo.gr
#' @noRd
test_url <- function(url) {

  get_res <- tryCatch({
    httr::GET(url)},
    error = function(e){
      stop("The server for that data source is probably down, get more info at
           http://www.meteo.gr/contact.cfm or try again later.", call. = FALSE)
    })

  if (get_res$status_code != 200) {
    stop("The server for that data source did not respond successfully.", call. = FALSE)
  }

  return(200)
}

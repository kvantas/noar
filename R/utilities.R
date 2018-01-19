# use GET to test availibility of an url from meteo.gr
#' @noRd
test_url <- function(url) {

  get_res <- tryCatch({
    httr::GET(url)
    },
    error = function(e){
      stop("The server for that data source is probably down, try again later.",
           call. = FALSE)
    })

  if (get_res$status_code != 200) {
    stop("The server for that data source did not respond successfully, try
         again later.",
         call. = FALSE)
  }

  return(NULL)
}

# translitarate all the columns of a dataframe from Greek to latin-ascii
#' @noRd
trasnlit_all <- function(df) {

  df[] <- lapply(df, function(x){
    y <- stringi::stri_trans_general(x, "Latin")
    stringi::stri_trans_general(y, "latin-ascii")
  })
  df <- tibble::as_tibble(df)
  return(df)
}

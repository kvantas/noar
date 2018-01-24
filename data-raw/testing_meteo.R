library(rvest)
library(xml2)

noa_url <- "http://meteo.gr/observationsFull.cfm"

#Reading the HTML code from the website
webpage <- read_html(noa_url)


links <- webpage %>% html_nodes("td:nth-child(1) a") %>% html_attr("href")
links <- links[grep("http", links)]

tables <- webpage %>%
  html_nodes("table") %>%
  html_table(fill = TRUE)

stations <- tables[[1]]
stations$url <- links
all_df <-
webpage %>%
  html_nodes("table") %>%
  html_table(fill = TRUE)

x <- read_xml(webpage)

tables <- html_nodes(webpage, "table")
table <- tables[[1]]

stations_df <- html_table(table, fill = TRUE)

html_children(table)



tmp <- html_attr(table, "td_primary")

html_nodes(table, "td")[11]

xml2::html_structure(table)

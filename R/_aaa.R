#' @importFrom dplyr filter select rename mutate bind_rows
#' @importFrom glue glue
#' @importFrom httr GET content user_agent POST content parse_url build_url
#' @importFrom janitor clean_names
#' @importFrom jsonlite fromJSON
#' @importFrom purrr safely keep transpose map_dfr possibly pmap_dfr
#' @importFrom rlang maybe_missing inform .data
#' @importFrom rvest session read_html html_elements html_text
#' @importFrom stringr str_detect str_extract
#' @importFrom tibble enframe as_tibble tibble
#' @importFrom tidyr unnest_wider unnest_longer unnest crossing pivot_longer
#' @importFrom tidyselect vars_select_helpers
#' @importFrom xml2 read_html

BASE_URL <- 'https://www.fotmob.com/'

#' @importFrom dplyr filter select rename mutate bind_rows case_when across distinct arrange
#' @importFrom glue glue glue_collapse
#' @importFrom httr GET content user_agent POST content parse_url build_url
#' @importFrom janitor clean_names
#' @importFrom jsonlite fromJSON toJSON
#' @importFrom lubridate is.Date ymd
#' @importFrom purrr safely keep transpose map_dfr possibly pmap_dfr pluck discard map2_dfr
#' @importFrom rlang maybe_missing inform .data set_names .env
#' @importFrom rvest session read_html html_elements html_attr html_text2
#' @importFrom stringr str_detect str_extract str_remove_all str_replace
#' @importFrom tibble enframe as_tibble tibble
#' @importFrom tidyr unnest_wider unnest_longer unnest crossing pivot_longer hoist
#' @importFrom tidyselect vars_select_helpers
#' @importFrom xml2 read_html

BASE_URL <- 'https://www.fotmob.com/'

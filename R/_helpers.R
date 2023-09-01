#' @noRd
.fotmob_extract_meta <- function() {
  page <- rvest::read_html(BASE_URL)

  page |>
    rvest::html_elements("script") |>
    rvest::html_text(trim = TRUE) |>
    purrr::keep(stringr::str_detect, "props")
}

#' @noRd
.fotmob_get_build_id <- function() {
  meta <- .fotmob_extract_meta()
  meta |>
    stringr::str_extract('(?<=\\"buildId\\"[:]).*(?=\\,\\"isFallback\\")') |>
    safely_get_content() |>
    purrr::pluck("result")
}

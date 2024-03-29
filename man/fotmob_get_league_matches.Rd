% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/leagues.R
\name{fotmob_get_league_matches}
\alias{fotmob_get_league_matches}
\title{Get fotmob match results by league}
\usage{
fotmob_get_league_matches(
  country,
  league_name,
  league_id,
  season = NULL,
  cached = TRUE
)
}
\arguments{
\item{country}{Three character country code. Can be one or multiple. If provided, `league_name` must also be provided (of the same length)}

\item{league_name}{League names. If provided, `country` must also be provided (of the same length).}

\item{league_id}{Fotmob ID for the league. Only used if `country` and `league_name` are not specified.}

\item{season}{Season, e.g. `"2021/2022"`. Can be one or multiple. If left as `NULL` (default), data for the latest season available will be pulled.}

\item{cached}{Whether to load the dataframe from the \href{https://github.com/JaseZiv/worldfootballR_data/blob/master/raw-data/fotmob-leagues/all_leagues.csv}{data CSV}. This is faster and most likely what you want to do, unless you identify a league that's being tracked by fotmob that's not in this pre-saved CSV.}
}
\value{
returns a dataframe of league matches
}
\description{
Returns match status given a league and season
}
\examples{
\donttest{
try({
library(dplyr)
library(tidyr)

# one league
fotmob_get_league_matches(
  country = "ENG",
  league_name = "Premier League"
)

# one league, by id
fotmob_get_league_matches(
  league_id = 47
)

# can specify past seasons
fotmob_get_league_matches(
  country = "GER",
  league_name = "1. Bundesliga",
  season = "2020/2021"
)

# multiple leagues (could also use ids)
league_matches <- fotmob_get_league_matches(
  country =     c("ENG",            "ESP"   ),
  league_name = c("Premier League", "LaLiga")
)

# probably the data that you care about
league_matches |>
  dplyr::select(match_id = id, home, away) |>
  tidyr::unnest_wider(c(home, away), names_sep = "_")
})
}
}

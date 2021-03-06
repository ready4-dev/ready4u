% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_eq5d_ds_dict}
\alias{make_eq5d_ds_dict}
\title{Make eq5d dataset dictionary}
\usage{
make_eq5d_ds_dict(
  data_tb = make_fake_eq5d_ds(),
  predictors_lup = make_psych_predrs_lup()
)
}
\arguments{
\item{data_tb}{Data (a tibble), Default: make_fake_eq5d_ds()}

\item{predictors_lup}{Predictors (a lookup table), Default: make_psych_predrs_lup()}
}
\value{
Dictionary (a tibble)
}
\description{
make_eq5d_ds_dict() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make eq5d dataset dictionary. The function returns Dictionary (a tibble).
}
\keyword{internal}

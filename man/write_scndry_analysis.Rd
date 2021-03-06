% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_write.R
\name{write_scndry_analysis}
\alias{write_scndry_analysis}
\title{Write scndry analysis}
\usage{
write_scndry_analysis(
  predictors_lup = NULL,
  valid_params_ls_ls,
  candidate_covar_nms_chr,
  candidate_predrs_chr = NULL,
  header_yaml_args_ls,
  path_params_ls,
  prefd_covars_chr = NA_character_,
  reference_1L_int,
  start_at_int = c(2, 1),
  rprt_nm_1L_chr = "AAA_SUPLRY_ANLYS_MTH",
  abstract_args_ls = NULL
)
}
\arguments{
\item{predictors_lup}{Predictors (a lookup table), Default: NULL}

\item{valid_params_ls_ls}{Valid params (a list of lists)}

\item{candidate_covar_nms_chr}{Candidate covariate names (a character vector)}

\item{candidate_predrs_chr}{Candidate predictors (a character vector), Default: NULL}

\item{header_yaml_args_ls}{Header yaml arguments (a list)}

\item{path_params_ls}{Path params (a list)}

\item{prefd_covars_chr}{Preferred covariates (a character vector), Default: 'NA'}

\item{reference_1L_int}{Reference (an integer vector of length one)}

\item{start_at_int}{Start at (an integer vector), Default: c(2, 1)}

\item{rprt_nm_1L_chr}{Report name (a character vector of length one), Default: 'AAA_SUPLRY_ANLYS_MTH'}

\item{abstract_args_ls}{Abstract arguments (a list), Default: NULL}
}
\description{
write_scndry_analysis() is a Write function that writes a file to a specified local directory. Specifically, this function implements an algorithm to write scndry analysis. The function is called for its side effects and does not return a value. WARNING: This function writes R scripts to your local environment. Make sure to only use if you want this behaviour
}

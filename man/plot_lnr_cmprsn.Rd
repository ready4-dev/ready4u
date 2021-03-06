% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_plot.R
\name{plot_lnr_cmprsn}
\alias{plot_lnr_cmprsn}
\title{Plot linear comparison}
\usage{
plot_lnr_cmprsn(
  data_tb,
  predn_ds_tb,
  predr_var_nm_1L_chr,
  predr_var_desc_1L_chr,
  depnt_var_nm_1L_chr = "utl_total_w",
  depnt_var_desc_1L_chr = "Total weighted utility score"
)
}
\arguments{
\item{data_tb}{Data (a tibble)}

\item{predn_ds_tb}{Prediction dataset (a tibble)}

\item{predr_var_nm_1L_chr}{Predictor variable name (a character vector of length one)}

\item{predr_var_desc_1L_chr}{Predictor variable description (a character vector of length one)}

\item{depnt_var_nm_1L_chr}{Dependent variable name (a character vector of length one), Default: 'utl_total_w'}

\item{depnt_var_desc_1L_chr}{Dependent variable description (a character vector of length one), Default: 'Total weighted utility score'}
}
\description{
plot_lnr_cmprsn() is a Plot function that plots data Specifically, this function implements an algorithm to plot linear comparison. The function is called for its side effects and does not return a value.
}
\keyword{internal}

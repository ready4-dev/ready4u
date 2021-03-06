% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_make.R
\name{make_mdl_type_smry_tbl}
\alias{make_mdl_type_smry_tbl}
\title{Make model type summary table}
\usage{
make_mdl_type_smry_tbl(
  mdls_tb,
  mdl_nms_chr,
  mdl_type_1L_chr,
  add_mdl_nm_sfx_1L_lgl = T
)
}
\arguments{
\item{mdls_tb}{Models (a tibble)}

\item{mdl_nms_chr}{Model names (a character vector)}

\item{mdl_type_1L_chr}{Model type (a character vector of length one)}

\item{add_mdl_nm_sfx_1L_lgl}{Add model name suffix (a logical vector of length one), Default: T}
}
\value{
Model type summary table (a tibble)
}
\description{
make_mdl_type_smry_tbl() is a Make function that creates a new R object. Specifically, this function implements an algorithm to make model type summary table. The function returns Model type summary table (a tibble).
}
\keyword{internal}

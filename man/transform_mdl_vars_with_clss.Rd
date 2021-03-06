% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_transform.R
\name{transform_mdl_vars_with_clss}
\alias{transform_mdl_vars_with_clss}
\title{Transform model variables with classes}
\usage{
transform_mdl_vars_with_clss(
  ds_tb,
  predictors_lup = NULL,
  prototype_lup = NULL,
  depnt_var_nm_1L_chr = "utl_total_w",
  class_fn_1L_chr = "as.numeric"
)
}
\arguments{
\item{ds_tb}{Dataset (a tibble)}

\item{predictors_lup}{Predictors (a lookup table), Default: NULL}

\item{prototype_lup}{Prototype (a lookup table), Default: NULL}

\item{depnt_var_nm_1L_chr}{Dependent variable name (a character vector of length one), Default: 'utl_total_w'}

\item{class_fn_1L_chr}{Class function (a character vector of length one), Default: 'as.numeric'}
}
\value{
Transformed dataset (a tibble)
}
\description{
transform_mdl_vars_with_clss() is a Transform function that edits an object in such a way that core object attributes - e.g. shape, dimensions, elements, type - are altered. Specifically, this function implements an algorithm to transform model variables with classes. Function argument ds_tb specifies the object to be updated. Argument predictors_lup provides the object to be updated. The function returns Transformed dataset (a tibble).
}

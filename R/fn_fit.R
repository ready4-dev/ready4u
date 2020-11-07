#' Fit clg log tfmn
#' @description fit_clg_log_tfmn() is a Fit function that fits a model of a specified type to a dataset Specifically, this function implements an algorithm to fit clg log tfmn. The function returns Mdl (a list).
#' @param data_tb Data (a tibble)
#' @param dep_var_nm_1L_chr Dep var name (a character vector of length one), Default: 'aqol6d_total_w_cloglog'
#' @param predictor_vars_nms_chr Predictor vars names (a character vector)
#' @param id_var_nm_1L_chr Id var name (a character vector of length one), Default: 'fkClientID'
#' @param iters_1L_int Iters (an integer vector of length one), Default: 4000
#' @param seed_1L_int Seed (an integer vector of length one), Default: 1000
#' @return Mdl (a list)
#' @rdname fit_clg_log_tfmn
#' @export 

#' @keywords internal
fit_clg_log_tfmn <- function (data_tb, dep_var_nm_1L_chr = "aqol6d_total_w_cloglog", 
    predictor_vars_nms_chr, id_var_nm_1L_chr = "fkClientID", 
    iters_1L_int = 4000L, seed_1L_int = 1000L) 
{
    mdl_ls <- fit_ts_model_with_brm(data_tb, dep_var_nm_1L_chr = dep_var_nm_1L_chr, 
        predictor_vars_nms_chr = predictor_vars_nms_chr, link_1L_chr = "identity", 
        id_var_nm_1L_chr = id_var_nm_1L_chr, iters_1L_int = iters_1L_int, 
        seed_1L_int = seed_1L_int)
    return(mdl_ls)
}
#' Fit gsn log lnk
#' @description fit_gsn_log_lnk() is a Fit function that fits a model of a specified type to a dataset Specifically, this function implements an algorithm to fit gsn log lnk. The function returns Mdl (a list).
#' @param data_tb Data (a tibble)
#' @param dep_var_nm_1L_chr Dep var name (a character vector of length one), Default: 'aqol6d_total_w'
#' @param predictor_vars_nms_chr Predictor vars names (a character vector)
#' @param id_var_nm_1L_chr Id var name (a character vector of length one), Default: 'fkClientID'
#' @param iters_1L_int Iters (an integer vector of length one), Default: 4000
#' @param seed_1L_int Seed (an integer vector of length one), Default: 1000
#' @return Mdl (a list)
#' @rdname fit_gsn_log_lnk
#' @export 

#' @keywords internal
fit_gsn_log_lnk <- function (data_tb, dep_var_nm_1L_chr = "aqol6d_total_w", predictor_vars_nms_chr, 
    id_var_nm_1L_chr = "fkClientID", iters_1L_int = 4000L, seed_1L_int = 1000L) 
{
    mdl_ls <- fit_ts_model_with_brm(data_tb, dep_var_nm_1L_chr = dep_var_nm_1L_chr, 
        predictor_vars_nms_chr = predictor_vars_nms_chr, link_1L_chr = "log", 
        id_var_nm_1L_chr = id_var_nm_1L_chr, iters_1L_int = iters_1L_int, 
        seed_1L_int = seed_1L_int)
    return(mdl_ls)
}
#' Fit ts model with brm
#' @description fit_ts_model_with_brm() is a Fit function that fits a model of a specified type to a dataset Specifically, this function implements an algorithm to fit ts model with brm. The function returns Mdl (a list).
#' @param data_tb Data (a tibble)
#' @param dep_var_nm_1L_chr Dep var name (a character vector of length one)
#' @param predictor_vars_nms_chr Predictor vars names (a character vector)
#' @param id_var_nm_1L_chr Id var name (a character vector of length one)
#' @param backend_1L_chr Backend (a character vector of length one), Default: getOption("brms.backend", "rstan")
#' @param link_1L_chr Link (a character vector of length one), Default: 'identity'
#' @param iters_1L_int Iters (an integer vector of length one), Default: 4000
#' @param seed_1L_int Seed (an integer vector of length one), Default: 1000
#' @return Mdl (a list)
#' @rdname fit_ts_model_with_brm
#' @export 
#' @importFrom brms brm
#' @importFrom purrr map_chr
#' @keywords internal
fit_ts_model_with_brm <- function (data_tb, dep_var_nm_1L_chr, predictor_vars_nms_chr, 
    id_var_nm_1L_chr, backend_1L_chr = getOption("brms.backend", 
        "rstan"), link_1L_chr = "identity", iters_1L_int = 4000L, 
    seed_1L_int = 1000L) 
{
    mdl_ls <- brms::brm(formula = as.formula(paste0(dep_var_nm_1L_chr, 
        " ~ ", purrr::map_chr(predictor_vars_nms_chr, ~paste0(.x, 
            "_baseline + ", .x, "_change + ")) %>% paste0(collapse = ""), 
        "(1|", id_var_nm_1L_chr, ")")), backend = backend_1L_chr, 
        data = data_tb, family = gaussian(link = link_1L_chr), 
        iter = iters_1L_int, seed = seed_1L_int)
    return(mdl_ls)
}
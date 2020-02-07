get_detailed_report <- function(account_id, api_key,
                                start_date, end_date, ...){

  # Want a list of extra query parameters provided by the user
  argg <- list(...)

  detailed_report_endpoint <- "/reports/detailed/csv"

  base_query <- paste0("?reportParams.accountId=", account_id,
                       "&reportParams.startDate=", start_date,
                       "&reportParams.endDate=", end_date)

  additional_queries <- ""
  if (length(argg) != 0) for (i in length(argg)){
    # Throw an error if the user inputs a non-existent query parameter.
    if (!names(argg[i]) %in% tmetricr::report_params) {
      stop(paste(names(argg[i]), "not a possible query parameter."))
    }
    additional_queries <- paste0(additional_queries, "&",
                                 names(argg[1]), "=", argg[1])
  }

  url <- paste0(tmetricr::base_url, detailed_report_endpoint, base_query, additional_queries)

  detailed_report <- httr::GET(url, httr::add_headers(Authorization = sprintf("Bearer %s", api_key)))

  detailed_report <- httr::content(detailed_report, type = "text/csv")

  return(detailed_report)

}

summarise_detailed_report <- function(detailed_report){

  detailed_report_summary <- detailed_report %>% dplyr::group_by(Project) %>%
    dplyr::summarise(sum = sum(Duration))

  return(detailed_report_summary)

}
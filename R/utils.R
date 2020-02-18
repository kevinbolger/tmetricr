tmetric_api <- function(endpoint, query) {
  url <- httr::modify_url("https://app.tmetric.com", path = endpoint, query = query)
  return(url)
}

report_params <- c(
  "reportParams.projectList",
  "reportParams.clientList",
  "reportParams.tagList",
  "reportParams.groupColumnNames",
  "reportParams.hiddenColumns",
  "reportParams.activeProjectsOnly",
  "reportParams.billable",
  "reportParams.invoiced",
  "reportParams.noRounding",
  "reportParams.timeEntryFilter",
  "reportParams.chartValue",
  "reportParams.useUtcTime",
  "reportParams.accountId",
  "reportParams.profileList",
  "reportParams.groupList",
  "reportParams.startDate",
  "reportParams.endDate"
)

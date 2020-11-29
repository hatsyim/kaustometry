#' An Excel with Multiple Sheets Reader
#'
#' This allows to simultaneously load all the sheets into a single data frame.
#' @param fileDir the relative path directory
#'
#' @return data framelib
#' @import readxl
#' @import stats
#' @export
#'
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
#' load_calculation("../../final_project/HFO Feb.xlsx")
load_calculation <- function(fileDir)
{

sheets = excel_sheets(fileDir)
data = lapply(setNames(sheets, sheets), function(s) read_excel(fileDir, sheet=s))

}

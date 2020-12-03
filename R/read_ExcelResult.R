#' Load the Excel files given as result of a FTICRMS analysis by CoreLabs.
#'
#' @param data Input the name of the Excel file with .xlsx extension.
#'
#' @return a list named as the excel file with the data organize according to the names of the sheets
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
read_ExcelResult <- function(data){
  sheets = excel_sheets(data)
  data = lapply(setNames(sheets, sheets), function(s) read_excel(data, sheet=s))
}


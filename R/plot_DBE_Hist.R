#' Histogram of DBE by class compound
#'
#' @param data input the data created by the function read_ExcelResult
#' @param main input a custom name for the graph
#' @param col input a custom color for the graph
#' @param classcmp Class compound which DBE is plotted.
#'
#' @return
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
plot_DBE_Hist <- function(data,main,col,classcmp){
  hist(data$`MS peak assignment`$data[data$`MS peak assignment`$Class=='classcmp']
       ,col=col,xlab='DBE',main=main,breaks=50)
}

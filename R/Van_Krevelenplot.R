#' Van Krevelen plot
#'
#' @param data input the data created by the function read_ExcelResult
#' @param main input a custom name for the graph
#' @param ratio ratio of elements to plot as are designed in the excel file: H/C, N/C, O/C or S/C
#' @param xlab name of the x-axis
#' @param ylab name of the y-axis
#' @param xlim limits for x-axis
#' @param ylim limits for y-axis
#'
#' @return
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
Van_Krevelenplot <- function(data,main,ratio,xlab,ylab,xlim,ylim){
  data_VK <- data$`MS peak assignment`
  n <- 2000
  rbPal <- colorRampPalette(c('blue','green','yellow','red'))
  rbCol <- rbPal(n)[as.numeric(cut(0.001*data_VK$`Mono Abund`,breaks = n))]
  plot(data_VK$`ratio`,data_VK$`H/C`, pch=16, cex=0.000000017*data_VK$`Mono Abund`,col=rbCol,
       main = main, ylab = ylab, xlab = xlab ,xlim=xlim,ylim=ylim)
}

#' Plot the mass spectrum
#'
#' @param data input the data created by the function read_ExcelResult
#' @param main input a custom name for the graph
#' @param col input a custom color for the graph
#' @param ylim input the limits for y-axis
#' @param xlim input the limits for x_axis
#'
#' @return A mass spectrum plot
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
plot_massspectrum <- function(data,main,col,ylim,xlim){
  data_FMS <- data$`Filter MS peaks`
  n <- 2000
  rbPal <- colorRampPalette(c('blue','green','yellow','red'))
  rbCol <- rbPal(n)[as.numeric(cut(0.001*data_FMS$`I`,breaks = n))]
  plot(data_FMS$`m/z`, data_FMS$I, type = "l", pch = 10, col = col,
       main = main, ylab = "abundance", xlab = "m/z",ylim = ylim, xlim= xlim)

}

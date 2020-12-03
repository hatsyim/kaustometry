#' Kendrick Plot
#'
#' @param data input the data created by the function read_ExcelResult
#' @param main input a custom name for the graph
#'
#' @return
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
Kendrick_plot <- function(data,main){
  data <- data$`MS peak assignment`
  n <- 2000
  rbPal <- colorRampPalette(c('blue','green','yellow','red'))
  rbCol <- rbPal(n)[as.numeric(cut(0.001*data$`Mono Abund`,breaks = n))]
  plot(data$`Kendrick m/z`, data$KMD, pch =16, cex=0.000000017*data$`Mono Abund`,col=rbCol,
       main = main, ylab = "KMD", xlab = "Kendrick m/z")
}

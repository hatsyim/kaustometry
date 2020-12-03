#' Plot a scatter plot of the DBE for each element
#'
#' @param data input the data created by the function read_ExcelResult
#' @param Het input heteroatom as #C or #H or #N or #O or #S
#' @param main input a custom name for the graph
#'
#' @return A scatter plot of the DBE for each element, gives information about its abundance by the size of the spot and its color
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
plot_DBE_Het <- function (data,Het,main){
  data <- data$CH
  n <- length(data)
  rbPal <- colorRampPalette(c('blue','green','yellow','red'))
  rbCol <- rbPal(2000)[as.numeric(cut(data$Abundance,breaks = 2000))]
  plot(data$Het, data$DBE, pch =16, cex=0.00000002*data$Abundance,col=rbCol,
       main = main, ylab = "DBE", xlab = "Het")
}

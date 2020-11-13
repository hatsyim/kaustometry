#' A Mass Spectrum Plot Function
#'
#' This allows you to plot a mass spectrum plot given some inputs.
#' @param color list of the color palette
#' @param x data for the x axis
#' @param y data for the y axis
#' @param main title of the plot
#' @param pch type of point
#' @param xlab label of the x axis
#' @param ylab label of the y axis
#' @keywords Kendrick mass, spectrometry
#' @import grDevices
#' @import graphics
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
#' plot_spectrum(x=rnorm(100), y=rnorm(100), pch = 10, col = "blue",
#' main = "Mass Spectra Plot", ylab = "abundance", xlab = "m/z")


plot_spectrum <- function(color,x,y,main,pch,xlab,ylab)
{
  plot(x, y, pch = pch, type = "l", col = color,
       main = main, ylab = ylab, xlab = xlab)
}

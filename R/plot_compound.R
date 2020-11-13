#' A Compound Class Plot Function
#'
#' This allows you to plot a compound class plot given some inputs.
#' @param x data for the x axis
#' @param h data for the y axis
#' @param main title of the plot
#' @param xlab label of the x axis
#' @param ylab label of the y axis
#' @keywords Kendrick mass, spectrometry
#' @import grDevices
#' @import graphics
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
#' plot_compound(x=rnorm(100),h=rnorm(100),"July","Abundance","Compound Class")
plot_compound <- function(x,h,main,xlab,ylab)
{
  barplot(names.arg = x,
          height = h,
          ylab = ylab,
          xlab = xlab,
          main = main)
}

#' A Double Bond Equivalent Scatter Plot Function
#'
#' This allows you to plot a double bond equivalent scatter plot given some inputs.
#' @param colorPalette list of the color palette
#' @param abundance intensity data of the spectometry data
#' @param n number of data for segmenting the continuous color palette
#' @param x data for the x axis
#' @param y data for the y axis
#' @param size size of the point relative to the abundance data
#' @param main title of the plot
#' @param pch type of point
#' @param xlab label of the x axis
#' @param ylab label of the y axis
#' @keywords Kendrick mass, spectrometry
#' @export
#' @import grDevices
#' @import graphics
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
#' plot_dbe(colorPalette=c('blue','green','yellow','red'),
#' abundance=rnorm(100),100,x=rnorm(100),y=rnorm(100),0.00000001,"Kendrick Plot",16,"x","y")

plot_dbe <- function(colorPalette, abundance,n,x,y,size,main,pch,xlab,ylab)
{
  rbPal <- colorRampPalette(colorPalette)
  rbCol <- rbPal(n)[as.numeric(cut(abundance,breaks = n))]
  plot(x, y, pch = pch, cex=size*abundance,col=rbCol,
       main = main, ylab = ylab, xlab = xlab)
}

#' Plot_ly version of the mass spectrum
#'
#' @param expMpZ input the data exponential of m/z ratio
#' @param totAbund input the data of total abundance
#' @param Class input the data Class
#'
#' @return
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
int_spectrum <- function(expMpZ,totAbund,Class){

  p <- ggplot(aes(expMpZ,totAbund,color=Class)) + xlab('m/z')+ylab('Abundance')+ geom_point() +theme_bw()

  ggplotly(p)
}

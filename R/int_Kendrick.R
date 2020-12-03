#' Interactive Kendrick plot using plotly
#'
#' @param data input the data created by the function read_ExcelResult
#'
#' @return
#' @export
#' @author
#' Ghanimah Abuhaimed, Edwin Guevara Romero, Mohammad Hasyim Taufik
#' @examples
int_Kendrick <- function(data){
  p <- data$`MS peak assignment` %>%
    ggplot(aes(data$`MS peak assignment`$`Kendrick m/z`, data$`MS peak assignment`$`KMD`)) +
    stat_density_2d(aes(fill = ..density..), geom = "raster", contour = FALSE) +
    scale_x_continuous(expand = c(0, 0)) +
    scale_y_continuous(expand = c(0, 0)) +
    scale_fill_gradientn(colours=inferno(10)) +
    ylim(0,0.6)+
    xlab('Kendrick Mass')+ylab('KMD')+
    theme(
      legend.position='none'
    )
  ggplotly(p)
}

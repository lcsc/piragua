#' Daily streamflow at Gállego River at Anzánigo (station 2203)
#'
#' Daily discharge series used as an example in the PIRAGUA vignettes.
#' The station is located in the central Spanish Pyrenees and forms part of
#' the Ebro basin gauging network.
#'
#' @format An xts / zoo object with 24106 rows and 2 variables:
#' \describe{
#'   \item{Index}{Date of observation (class \code{Date}).}
#'   \item{anzanigo}{Daily mean discharge (\eqn{m^3~s^{-1}}).}
#' }
#'
#' @source Confederación Hidrográfica del Ebro (CHE),
#'   processed within the PIRAGUA project.
#'
#' @examples
#' data(anzanigo)
#' str(anzanigo)
#' plot(anzanigo$date, anzanigo$q, type = "l")
"anzanigo"

#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {

  callModule(mod_faithful_histogram_server, "hist-waiting",
             reactive("waiting"))
  callModule(mod_faithful_histogram_server, "hist-eruptions",
             reactive("eruptions"))

}

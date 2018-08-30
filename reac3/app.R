#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    actionButton("go","go!")
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {
  observeEvent(input$go,{
    updateActionButton(session,
                       inputId="go",
                       label=paste0(paste0(rep("go",input$go+1),
                                         collapse=", "),
                                   "!")
    )
  })
}

# Run the application 
shinyApp(ui = ui, server = server)


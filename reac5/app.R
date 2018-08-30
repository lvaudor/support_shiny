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
  fluidRow(column(width=4,textInput("word1","First word","Hello")),
           column(width=4,textInput("word2","Second word","Master")),
           column(width=4,textOutput("combi"))
  )
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {
  output$combi <- renderText({paste(input$word1,isolate(input$word2))})
}

# Run the application 
shinyApp(ui = ui, server = server)


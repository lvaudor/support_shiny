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
  flowLayout(radioButtons("a","Word 1:", c("Hello","Greetings")),
             radioButtons("b","Word 2:", c("benevolent","great")),
             radioButtons("c","Word 3:", c("Master","Human"))),
  tabsetPanel(tabPanel("tab1",textOutput("d")),
              tabPanel("tab2",textOutput("e")),
              selected="tab2")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$d <- renderText({Sys.sleep(1);paste(input$a,"!")})
  output$e <- renderText({Sys.sleep(1);paste(input$a,",",input$b,input$c,"!")})
}

# Run the application 
shinyApp(ui = ui, server = server)


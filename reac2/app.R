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
    fluidRow(column(width=4,radioButtons("a","Image:", c("heart","sun"))),
             column(width=4,radioButtons("b","Word 1:", c("Hello","Greetings"))),
             column(width=4,radioButtons("c","Word 2:", c("Master","Human")))),
    tabsetPanel(tabPanel("tab1",uiOutput("d")),
                tabPanel("tab2",uiOutput("e")))
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  f=reactive({
    Sys.sleep(1)
    result=paste0(input$a,".png")
  })
  output$d <- renderUI({img(src=f())})
  output$e <- renderUI({p(img(src=f())," ",input$b,",",input$c,"!")})
}

# Run the application 
shinyApp(ui = ui, server = server)


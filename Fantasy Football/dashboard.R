

library(shinydashboard)
library(shiny)

header <- dashboardHeader(title = "Example of content")

sidebar <- dashboardSidebar()

body <- dashboardBody(
  
  fluidRow(
    
    # style = "margin-top:20%;",
    
    column(
      
      width = 8,
      
      plotOutput("radar")
      
      ),
    
    column(
      
      width = 4,
      
      plotOutput("density1")
      
    )
    
  )
  
)

ui <- dashboardPage(header, sidebar, body,
                    skin = "green")


server <- function(input, output) {
  
  rad <- fread("radar.csv")
  
  pos <- fread("position.csv")
  
  output$radar <- renderPlot({
    
    data <- pos[, j = list(forty_perc)]
    hist(data$forty_perc)
    
  })
  
  output$density1 <- renderPlot({
    
    data <- pos[, j = list(forty_perc)]
    hist(data$forty_perc)
    
  })
  
}

shinyApp(ui, server)



### Server.R 
library(shiny)

# Rely on the 'ChickWright' dataset from the MASS Package 
library(MASS)
data(ChickWeight)
ChickWeight<-data.frame(ChickWeight)

Growth <- function(Time) 27.467 + 8.803*Time
# Define a server for the Shiny app
shinyServer(function(input, output) {
        output$inputValue <- renderPrint({input$Time})
        output$prediction <- renderPrint({Growth(input$Time)})
 }
)
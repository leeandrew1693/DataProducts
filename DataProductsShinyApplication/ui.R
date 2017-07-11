#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("MtCars Interactive App"),
  
  sidebarLayout(
    sidebarPanel(
        h3("What engines to display?"),
        h5("Using the checkboxes below, select which cylinder engines you want to display on the graph to your right. The mean MPG of all cars with your selected engines will be displayed below"),
        checkboxInput("fourcyl", "Four Cylinder", TRUE),
        checkboxInput("sixcyl", "Six Cylinder", TRUE),
        checkboxInput("eightcyl", "Eight Cylinder", TRUE),
        h3("Mean MPG: "),
        textOutput("avgMpg")
    ),
    
    mainPanel(
       plotOutput("plot1")
    )
  )
))

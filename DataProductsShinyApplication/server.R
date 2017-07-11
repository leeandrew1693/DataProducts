#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(ggplot2)
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    getData <- function(input) {
        temp <- data.frame(matrix(ncol=ncol(mtcars), nrow=0))
        colnames(temp) <- colnames(mtcars)
        if(input$fourcyl == TRUE){ 
            temp <- rbind(temp, mtcars[mtcars$cyl==4,])
        }
        if(input$sixcyl == TRUE){ 
            temp <- rbind(temp, mtcars[mtcars$cyl==6,])
        }
        if(input$eightcyl == TRUE){ 
            temp <- rbind(temp, mtcars[mtcars$cyl==8,])
        }
        temp
    }
    four <- renderText({})
    
    output$avgMpg<- renderText({ 
        data <- getData(input)
        mean(data$mpg)
    })
    
   output$plot1 <- renderPlot({
       data <- getData(input)
       
       g <- ggplot(data = data, mapping =aes(x=hp, y=mpg, col=as.factor(cyl)))
       g <- g + geom_point() + ggtitle("Mpg vs Hp by Cyl")
       g
   })
})

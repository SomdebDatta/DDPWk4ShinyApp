#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    values <- reactiveValues()
    # Calculate the interest and amount    
    observe({
        input$action_Calc
        values$add <- (input$num1 + input$num2)
        values$subtract <- (input$num1 - input$num2)
        values$multiply <- (input$num1 * input$num2)
        values$divide <- (input$num1 / input$num2)
    })
 #Displaying Evaluated Values
    output$text_add <- renderText({
        input$action_Calc
        paste("Addition: ", values$add)
    })
    output$text_subtract <- renderText({
        input$action_Calc
        paste("Subtraction: ", values$subtract)
    })
    output$text_multiply <- renderText({
        input$action_Calc
        paste("Multiplication: ", values$multiply)
    })
    output$text_divide <- renderText({
        input$action_Calc
        paste("Division: ", values$divide)
    })
})

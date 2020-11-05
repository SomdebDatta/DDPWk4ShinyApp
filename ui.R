#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Basic Mathematical Calculations"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("This app evaluates basic mathematical calculations between 2 numbers.{+-/*}"),
            numericInput("num1", label = h6("Enter the first number"), value = 10),
            sliderInput("num2", label = h6("Select the second number"), min = 0, max = 50, value = 20),
            actionButton("action_Calc", label = "Refresh & Evaluate") 
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(
                tabPanel("Output",
                         p(h5("Your entered values:")), textOutput("text_num1"),
                         textOutput("text_num2"), p(h5("Calculated values:")),
                         textOutput("text_add"), textOutput("text_subtract"),
                         textOutput("text_multiply"), textOutput("text_divide")
                )
            )
        )
    )
))

#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(tidyverse)
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Shiny App"),

    ## Panel with selectInput dropdown and output options
    pageWithSidebar(
        headerPanel("Data"),
        sidebarPanel(
            selectInput("data", "Dataset",
                        choices = c("ans1" = 1, "ans2" = 2, "ans3" = 3)
            ),
        ),
        mainPanel("Boxplot of Data and Confidence Interval",
            plotOutput("plot1"),
            textOutput("text1")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    reactivedata <- reactive({
        mylist[[as.integer(input$data)]]
    })

    ## Boxplot with 'DF' from selected list
    output$plot1 <- renderPlot({
        boxplot(reactivedata()$df,
                xlab = "Category",
                ylab = "Value")
    })

    ## Text output from 'value' stored in list
    output$text1 <- renderText({
        print(reactivedata()$ci)
    })
}

# Run the application
shinyApp(ui = ui, server = server)

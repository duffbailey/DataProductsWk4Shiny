#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
    # Application title
    headerPanel("What is Your Zodiac Sign?"),
    sidebarPanel(
        h3("Enter your birthday MM/DD)"),
        sliderInput("birthMM",
                    "Birth Month",
                    min = 1,
                    max = 12,
                    value = 1),
        sliderInput("birthDD",
                    "Birth Day",
                    min = 1,
                    max = 31,
                    value = 1)
            ),
        # Output the Zodiac sign
        mainPanel(
           h3("Your Zodiac Sign"), 
           h4("Birth Month"),
           verbatimTextOutput("birthMM"),
           h4("Birth Day "),
           verbatimTextOutput("birthDD"),
           h4("Sun Sign "),
           verbatimTextOutput("sunSign")
        )
    )
)


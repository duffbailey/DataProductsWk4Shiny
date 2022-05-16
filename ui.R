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
           verbatimTextOutput("sunSign"),
           h3("User Documentation"),
           p("This application returns the Zodiac sign for any person 
           based on the month and day of their birth.  
           Use the sliders to set the month number (1 for January, 2 for February, etc.) and 
             the day of the month.  The appropriate sun sign will be displayed as output.
             Birth dates are based on the Gregorian calendar.  Illogical month/day combinations 
             such as 02/31 return the zodiac sign for their logical equivalent: (03/03)."),
           h4("NOT TO BE USED FOR SIGNIFICANT LIFE DECISIONS")
        )
    )
)



library(shiny)
GetSunSign <- function(birthMonth, birthDay){
    signs <- c("Capricorn", "Aquarius", "Pisces", "Aries","Taurus", "Gemini","Cancer","Leo","Virgo","Libra", "Scorpio", "Sagitarius", "Capricorn")
    SwingDate <- c(20,19,21,20,21,21,23,23,23,23,22,22)
    if (SwingDate[birthMonth]> birthDay) {
        SignIdx <-  birthMonth 
    } else {
        SignIdx <- birthMonth +1
    }
    
    signs[SignIdx]
}


shinyServer(
    function(input, output) {
        output$birthMM <- renderPrint(input$birthMM)
        output$birthDD <- renderPrint(input$birthDD)
        output$sunSign <- renderPrint(GetSunSign(input$birthMM, input$birthDD))        
    }
)



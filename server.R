
library(shiny)
# GetSunSign function returns the Sun Sign that is associated with a 
# specified month and day of month.  It returns the sun sign associated with 
# the first day of the month up to the "Swing Date", which is the 
# day that the next Sun Sign goes into effect.  From the swing date on, 
# the next sun sign is returned.
# It is assumed that the UI will provide only numeric values within 
# range of 1 - 12 for birthMonth and 1 to 31 for birthDay.  Illogical 
# dates such as 02/31 are accepted.  They return the same SunSign 
# that their logical equivalent (03/03) would return.
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



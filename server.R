library(shiny)

shinyServer(function(input, output) {
    interest <- reactive({ 
        SI <- (as.integer(input$prin) * as.integer(input$rate) * as.integer(input$time))/100
        SI
        })
    totAmount <- reactive({
        amt <- as.integer(input$prin) + interest()
        amt
    })

    output$prinText <- renderText({
        paste("Principal amount (in rupees): ", input$prin)
    })
    
    output$rateText <- renderText({
        paste("Rate of interest: ", input$rate, "% per year")
    })
    
    output$timetext <- renderText({
        paste("Time Period: ", input$time, "years")
    })
    
    output$SIText <- renderText({
        paste("Simple Interest (in rupees): ", interest())
    })
    
    output$AText <- renderText({
        paste("Total Amount (in rupees): ", totAmount())
    })
})
titanic_survival <- function(first,male,age) exp(1.47461 +1.83564*as.integer(first) - 0.02917*age - 2.49770*as.integer(male))/
                                     (1+exp(1.47461 +1.83564*as.integer(first) - 0.02917*age - 2.49770*as.integer(male)))

  shinyServer(
  function(input, output) {
    output$age <- renderPrint({input$age})
    output$male <- renderPrint({input$male})
    output$first <- renderPrint({input$first})
    output$prediction <- renderPrint({titanic_survival(input$first,input$male,input$age)})
  }
)


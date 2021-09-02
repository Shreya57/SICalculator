library(shiny)

shinyUI(fluidPage(
    titlePanel("Simple Interest Calculator"),
    sidebarLayout(
        sidebarPanel(
            numericInput("prin", label = h6("Enter the principal amount (in rupees)"), value = 10000),
            sliderInput("rate", label = h6("Select the interest rate (in %)"), 0, 25, value = 9),
            sliderInput("time", label = h6("Select the number of time periods"), 1, 15, value = 6),
            submitButton("Calculate")
        ),
        mainPanel(
            tabsetPanel(
                tabPanel("Get Started!",
                         h3("Simple Interest and Total Amount Calculator"), br(),
                         p("This Shiny application calculates the simple interest and the total amount (principal + interest)."),
                         p("Formulae used:"), 
                         tags$b(tags$em("SI = P * r * t")), br(),
                         tags$b(tags$em("A = P + SI = P(1 + r * t)")), br(), br(),
                         p("where,"),
                         p("SI = Simple interest"),
                         p("P = Principal amount"),
                         p("r = Rate of interest"),
                         p("t = Time period"),
                         p("A = Total amount"),
                         h4("Please move to the next tab to see the results!")
                ),
                tabPanel(
                    "Results",
                    tags$b("Entered values were:"),
                    textOutput("prinText"),
                    textOutput("rateText"),
                    textOutput("timetext"), br(),
                    tags$b("Calculated values are:"),
                    textOutput("SIText"),
                    textOutput("AText")
                )
            )
        )
    )
))
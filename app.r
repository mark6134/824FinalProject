# Data Preparation. 

library(faraway)
library(shiny)
library(UsingR)
data(chredlin)
attach(chredlin)
str(chredlin)

colnames(chredlin)

col_order <- c("involact", "fire", "theft",
               "age","race", "income")
Redlining <- chredlin[, col_order]

#UI portion
ui <- fluidPage(
  titlePanel("Relationship Between Housing Insurance and Various Factors"),
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Factor:",
                  c("Fire" = "fire",
                    "Theft" = "theft",
                    "Age" = "age",
                    "Race" = "race",
                    "Income (In Thousands USD)" = "income")),
    ),
    mainPanel(
      h3(textOutput("caption")),
      plotOutput("rcPlot")
    )
  )
)


# Server Portion
server <- function(input, output) {
  formulaText <- reactive({
    paste("involact ~", input$variable)
  })
  output$caption <- renderText({
    formulaText()
  })
  output$rcPlot <- renderPlot({
    plot(as.formula(formulaText()),
            data = Redlining,
            col = "#75AADB", pch = 19)
  })
  
}

shinyApp(ui, server)

runApp("~/Learning/M.S. Applied Statistics and Analytics/STAT 824 Data Visualization/Final Project/app.r")




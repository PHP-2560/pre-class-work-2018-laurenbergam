library(shiny)

ui <- fluidPage(
  titlePanel("Normal Distribution"),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "z_value", label = "z value", value = 1, min = -4, max = 4)
    ), 
    mainPanel(
      textOutput("p_value")
  )
  )
)
  
server <- function(input, output) {
  output$p_value = renderPrint(pnorm(input$z_value, lower.tail = T)
  )
  
}





shinyApp(ui = ui, server = server)
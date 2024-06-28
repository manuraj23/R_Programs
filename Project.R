# Install and load required packages
install.packages("shiny")
library(shiny)

# Define UI for application
ui <- fluidPage(
  # Application title
  titlePanel("Hello, How Are You?"),
  
  # Display text
  mainPanel(
    h2("Hello, are you?")
  )
)

# Define server logic
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

library(shiny)
library(shinydashboard)

# Define UI for application
batter_df <- read.csv(file.choose())
ui <- dashboardPage(
  dashboardHeader(title = "ODI Cricket Analysis"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard Overview", tabName = "overview", icon = icon("dashboard")),
      menuItem("Sales Performance", tabName = "sales", icon = icon("chart-line")),
      menuItem("Customer Analytics", tabName = "customers", icon = icon("users")),
      menuItem("Marketing Campaigns", tabName = "marketing", icon = icon("bullhorn")),
      menuItem("Financial Insights", tabName = "finance", icon = icon("dollar-sign"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "overview",
              fluidRow(
                column(width = 6, 
                       h2("Dashboard Overview"),
                       # Add content for dashboard overview page
                       selectInput("country", label = "Select Country", 
                                   choices = c("Country A", "Country B", "Country C"),
                                   selected = "Country A"),
                       textOutput("selected_country")
                )
              )
      ),
      tabItem(tabName = "sales",
              fluidRow(
                column(width = 6, h2("Sales Performance"))
                # Add content for sales performance page
              )
      ),
      tabItem(tabName = "customers",
              fluidRow(
                column(width = 6, h2("Customer Analytics"))
                # Add content for customer analytics page
              )
      ),
      tabItem(tabName = "marketing",
              fluidRow(
                column(width = 6, h2("Marketing Campaigns"))
                # Add content for marketing campaigns page
              )
      ),
      tabItem(tabName = "finance",
              fluidRow(
                column(width = 6, h2("Financial Insights"))
                # Add content for financial insights page
              )
      )
    )
  )
)

# Define server logic
server <- function(input, output, session) {
  
  output$selected_country <- renderText({
    paste("Selected Country:", input$country)
  })
  
}

# Run the application
shinyApp(ui = ui, server = server)

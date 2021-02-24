#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

surveys_complete<-read_csv("data/complete_surveys.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Survey of Small Animals"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("max_weight", label = "Select max weight:",
                        min = 0.0, 
                        max = max(surveys_complete$weight), 
                        value = max(surveys_complete$weight), 
                        step = 20),
            
            sliderInput("max_hfl", label = "Select max hindfoot length:",
                        min = 0.0, 
                        max = max(surveys_complete$hindfoot_length), 
                        value = max(surveys_complete$hindfoot_length), 
                        step = 20)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("surveyPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$surveyPlot <- renderPlot({surveys_complete%>%
                                        filter(weight<=input$max_weight,
                                               hindfoot_length<=input$max_hfl)%>%
                                        ggplot(aes(x = weight,
                                                   y = hindfoot_length, 
                                                   color = species_id)) + 
                                        geom_point(alpha = 0.1,
                                                   aes(color = species_id))})
}

# Run the application 
shinyApp(ui = ui, server = server)

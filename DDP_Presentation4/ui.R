library(shiny)
library(plotly)

ui <- fluidPage(
    titlePanel("Global Mean Estimates Based on Land-Surface Air Temperature Anomalies Only"),
    sidebarLayout(
        sidebarPanel(
             em("Move cursor over the bar charts to median differences per year.")
            ,br(),br(),br(),br()
            ,sliderInput("range1", "Global Range:", min = 1880, max = 2015, value = c(1880, 2015), step = 1)
            ,br(),br()
            ,sliderInput("range2", "Northern Hemisphere Range:", min = 1880, max = 2015, value = c(1880, 2015), step = 1)
            ,br(),br()
            ,sliderInput("range3", "Southern Hemisphere Range:", min = 1880, max = 2015, value = c(1880, 2015), step = 1)
            ,width=3
        ),
        mainPanel(
            br(),br(),
            plotlyOutput("plot1", width="800px", height="200px"),
            br(),br(),
            plotlyOutput("plot2", width="800px", height="200px"),
            br(),br(),
            plotlyOutput("plot3", width="800px", height="200px"),
            br(),br(),width=6
        )
    )
)

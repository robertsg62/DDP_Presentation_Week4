library(shiny)
library(plotly)

ui <- fluidPage(
    titlePanel("Global Mean Estimates Based on Land-Surface Air Temperature Anomalies Only"),
    sidebarLayout(
        sidebarPanel(
            em("In the text output, the year and median differences are displayed.")
        ),
        mainPanel(
            br(),br(),
            plotlyOutput("plot1", width="900px", height="600px"),
            br(),br(),
            plotlyOutput("plot2", width="900px", height="600px"),
            br(),br(),
            plotlyOutput("plot3", width="900px", height="600px"),
            br(),br()
        )
    )
)

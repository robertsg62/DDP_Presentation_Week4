library(shiny)
library(plotly)

ui <- fluidPage(
    titlePanel("Global Mean Estimates Based on Land-Surface Air Temperature Anomalies Only"),
    sidebarLayout(
        sidebarPanel(
            em("Moving the cursor over the bar charts will display the year and median differences for the year selected.")
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

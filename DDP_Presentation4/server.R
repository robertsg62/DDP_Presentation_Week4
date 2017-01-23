server <- function(input, output) {
    df <- read.csv("ZonAnn.Ts.csv")

    output$plot1 <- renderPlotly({
        p1 <- plot_ly(df, x = ~Year, y = ~Glob, color=~Year, type="bar") 
        p1 %>% layout(title="Global", xaxis=list(title="Year")
                      , yaxis=list(title="Annual Means"))
    })

    output$plot2 <- renderPlotly({
        p2 <- plot_ly(df, x = ~Year, y = ~NHem, color=~Year, type="bar") 
        p2 %>% layout(title="Northern Hemisphere", xaxis=list(title="Year")
                      , yaxis=list(title="Annual Means"))
    })

    output$plot3 <- renderPlotly({
        p3 <- plot_ly(df, x = ~Year, y = ~SHem, color=~Year, type="bar") 
        p3 %>% layout(title="Southern Hemisphere", xaxis=list(title="Year")
                      , yaxis=list(title="Annual Means"))
    })
}
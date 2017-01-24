server <- function(input, output) {
    df <- read.csv("ZonAnn.Ts.csv")

    df1 <- reactive({df %>% filter(Year >= input$range1[1] & Year <= input$range1[2])})
    df2 <- reactive({df %>% filter(Year >= input$range2[1] & Year <= input$range2[2])})
    df3 <- reactive({df %>% filter(Year >= input$range3[1] & Year <= input$range3[2])})
    
    output$plot1 <- renderPlotly({
        plot_ly(df1(), x = ~Year, y = ~Glob, color=~Year, type="bar") %>% 
        layout(title="Global", xaxis=list(title="Year"), 
               yaxis=list(title="Annual Means"))
    })

    output$plot2 <- renderPlotly({
        plot_ly(df2(), x = ~Year, y = ~NHem, color=~Year, type="bar") %>% 
        layout(title="Northern Hemisphere", xaxis=list(title="Year"), 
               yaxis=list(title="Annual Means"))
    })

    output$plot3 <- renderPlotly({
        plot_ly(df3(), x = ~Year, y = ~SHem, color=~Year, type="bar") %>% 
        layout(title="Southern Hemisphere", xaxis=list(title="Year"), 
               yaxis=list(title="Annual Means"))
    })
}
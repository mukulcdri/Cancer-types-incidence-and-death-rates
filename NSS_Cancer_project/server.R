
# Define server function required to create the scatterplot
shinyServer(function(input, output) {
  vals <- reactiveValues()
  observe({
    vals$gender <- input$Gender
    vals$type <- input$Cancer_Type
    #vals$race <- input$Race
    #vals$y <- input$y
  })
  
  
  # Create the scatterplot object the plotOutput function is expecting
  output$linePlot <- renderPlot({
    
    data <- Cancer_IR_DR_L %>%  
      filter(Gender == vals$gender, Cancer_Type == vals$type) %>%
      select(Year,Gender,Race,Cancer_Type,Incidence_rate, Death_rate)
    #y_value <- vals$y
    ggplot(data = data, aes_string(x  = data$Year, y = input$y)) +
      geom_point(color = "red", size = 4.5) + 
      geom_line(colour = "grey", width = 30) +
      facet_wrap(~ data$Race, nrow = 3) +
      scale_x_continuous(name = "Time span (Years)", limits = c(1999, 2014),
                         breaks = c(1999,2002, 2005, 2008,2011,2014)) +
      scale_y_continuous(name = "/ 100,000 people") +
      labs(caption = "(based on data from https://www.cdc.gov/cancer/lung/statistics/race.html)") +
      theme_dark() + 
      theme( axis.text.y  = element_text( size = 12, face = "bold" ),
             axis.text.x = element_text( size = 12, face = "bold" ),
             axis.title = element_text( size = 14, face = "bold" ),
             legend.position = "none",
             # The new stuff
             strip.text = element_text(size = 16, face = "bold",color = 'white' ))
      
      
      #theme(axis.title=element_text(face = "bold",size = "14", color = "black"))
    
    
    
    
    
  }, height = 600, width = 800 )
})

shinyServer(
  
  function(input, output, session)
  {
    
    
    output$myplot <- renderPlot(
      {
        
        distType <- input$Distribution
        size <- input$sampleSize
        
        if(distType == ' Normal')
          
        {
          randomVec <- rnorm(size, mean = as.numeric(input$Mean), sd = as.numeric(input$Sd))
          
        }
        
        else
        {
          randomVec <- rexp(size, rate = 1/as.numeric(input$lambda))
          
        }
        
        hist(randomVec, col = "blue")
        
      }
      
      
      
    )
  }
)
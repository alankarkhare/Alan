shinyServer(
  pageWithSidebar(
    
    headerPanel("My First Shiny App"),
    
    sidebarPanel(
      selectInput("Distribution","Select Distribution Type",
                  choices=c("Normal","Exponential")),
      sliderInput("sampleSize","please Select Sample Size: ",
                  min = 100 , max = 5000 , value = 1000 , step = 100),
      conditionalPanel(condition = "input.Distribution == 'Normal' ",
                       textInput("Mean", "Please Select The mean ", 10),
                       textInput("Sd", "please Select the standard Deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential' ",
                       textInput("lambda","please select exponential lambda",1))                 
      
    ),
    
    mainPanel(
      
      plotOutput("myplot")
    )
    
  )
  
  
)
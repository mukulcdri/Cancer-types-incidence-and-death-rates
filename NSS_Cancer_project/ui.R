# Define UI for application that draws a histogram
shinyUI(
  fluidPage(theme = shinytheme("slate"),
    
    # Application title
    titlePanel("Cancer prevalence"),
     sidebarLayout(
    # Inputs
    sidebarPanel(
      selectInput(inputId = 'Cancer_Type',
                  label = 'Type of Cancer',
                  choices = c('All', 'Colon', 'Breast', 'Lung', 'Prostate', 'Skin',
                              'Ovarian', 'Uterine'),
                  selected = 'All'),
      
      # selectInput(inputId = 'Race',
      #             label =  'Race',
      #             choices = c('All Races', 'White', 'Black','American Indian/Alaska Native (AI/AN)',
      #                         'Asian/Pacific Islander (A/PI)', 
      #                         'Hispanic' ),
      #             selected = 'All Races'),
      
      selectInput(inputId = 'Gender',
                  label = 'Sex',
                  choices = c('Male', 'Female'),
                  selected = 'Male'),
      
      selectInput(inputId = 'y', 
                  label = 'Impact:',
                  choices = c('Incidence rate' = 'Incidence_rate',
                              'Death rate' = 'Death_rate'), 
                  selected = 'Incidence_rate')
  
    
    ),
          # Show a plot of the generated distribution
    mainPanel(plotOutput(outputId = "linePlot"))
   
             )
      )
)



### ui.R
# Rely on the 'ChickWright' dataset from the MASS Package 
library(MASS)
data(ChickWeight)
ChickWeight<-data.frame(ChickWeight)

# Define the overall UI
shinyUI(
        
        # Use a fluid Bootstrap layout
        fluidPage(    
                
                # Give the page a title
                titlePanel("Chick Weight"),
                
                # Generate a row with a sidebar
                sidebarLayout(      
                        
                        # Define the sidebar with one input
                        sidebarPanel(
                                numericInput('Time', 'Number of days from birth', 1 , min = 1, max = 21), 
                                submitButton('Submit'),
                                hr(),
                                helpText("Minimum input is 1 and maximum input is 21 days.")
                        ),
                        
                        mainPanel(
                                h5('This app predicts the weight of chicks since birth. Input number of days since birth, the app will return an estimated weight of chick in grams. The data, ChickWeight, used to generate the prediction algorithm is based on an experiment that studied the effect of diet on early growth of chicks, and is from the MASS package.'),
                                h3('Results of prediction'),
                                h4('You entered'),
                                verbatimTextOutput("inputValue"),
                                h4('Which resulted in a prediction of '),
                                verbatimTextOutput("prediction")
                        )
                        
                )
        )
)
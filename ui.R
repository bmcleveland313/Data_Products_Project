shinyUI(
  pageWithSidebar(
  headerPanel("What's the Probability of You Surviving the Titanic Disaster?"),
  sidebarPanel(
    h4("Let's get some information about you"),
    numericInput('age', 'Choose your age (years):', 0, min = 0, max = 110, step = 1),
    checkboxInput("male", "I am a male", FALSE),
    checkboxInput("first", "I purchased a first class ticket", FALSE),
    submitButton('Submit'),
    br(),
    br(),
    h4("Documation on this App", style = "color:blue"),
    p("Once proclaimed unsinkable by its creators, the Titanic tragically sunk after hitting an iceberg in the Atlantic Ocean on its maiden voyage. 
      In the absence of sufficient lifeboats, several passengers parished.However, there was a very distinct cultural protocol for determining who would be given
      a spot on a lifeboat first. In general, young women that purchased a first class ticket had the greatest chance of survival. How would you have faired?
Input your age, gender, and whether or not you bought a first class ticket and a predictive model will determine your probability of surviving the Titanic Disaster!")
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('Your age is (years):'),
    verbatimTextOutput("age"),
    h4('You are a male:'),
    verbatimTextOutput("male"),
    h4('You purchased a first class ticket:'),
    verbatimTextOutput("first"),
    h4('Your probability of survival is:'),
    verbatimTextOutput("prediction")
  )
)
)
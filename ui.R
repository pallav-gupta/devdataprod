library(shiny)
library(ggplot2)

shinyUI(pageWithSidebar(
        headerPanel("MPG Calculator"),
        sidebarPanel(
                sliderInput('Weight', 'Select Weight (lb/1000)',value = 3, min = 1, max = 10, step = 0.05,),
                radioButtons('Transmission','Transmission Type', c("Automatic","Manual")),
                sliderInput('qsec', '1/4 mile time (sec)',value = 17.0, min = 10, max = 30, step = 0.05,)
        ),
        mainPanel(
                title ='Expected and Historic MPG Plot',
                plotOutput('myPlot'),
                h2("Summary"),
                helpText('This application is built by creating a linear prediction model using mtcars dataset.'),
                helpText('You can check the effect of Weight, transmission type and acceleration (1/4 mile time) on expected MPG in real-time by adjusting the parameters in the left panel. Expected MPG is shown on the top of the Plot above.'),
                helpText('Plot above shows the relationship between MPG and other parameters based on the historic data, that is used to build the application.'),
                helpText('Application code can be found at https://github.com/pallav-gupta/devdataprod .')
        )
))

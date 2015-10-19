library(datasets)
library(ggplot2)
library(grid)
data(mtcars)
mtcars$am <- factor(mtcars$am , labels = c("Automatic","Manual"))
bestfit<- lm(mpg ~ wt + qsec + am ,data = mtcars)

shinyServer(
        function(input, output) {
                output$myPlot <- renderPlot({
                        mtcars$am <- factor(mtcars$am , labels = c("Automatic","Manual"))
                        test <- data.frame(wt = input$Weight , qsec = input$qsec , am = input$Transmission)
                        result <- predict(bestfit,test)
                        outmpg <- paste("Expected MPG = " , round(result,2))
                        my_grob = grobTree(textGrob(outmpg, x=0.1,  y=0.95, hjust=0,
                                                    gp=gpar(col="blue", fontsize=15, fontface="italic")))
                        
                        g <- ggplot(data = mtcars,aes(y = mpg , x = wt + qsec, color= factor(mtcars$am,labels = c("Automatic","Manual")))) + geom_point()
                        g <- g +theme(legend.title = element_text(colour="chocolate", size=14, face="bold"))+
                                scale_color_discrete(name="Transmission")
                        g <- g + annotation_custom(my_grob) + xlab("Weight + 1/4 mile time (sec)") + 
                                ylab("Miles/(US) gallon") 
                        g <- g + stat_smooth(method= "lm")
                        g        
                        #geom_point(aes(x = test$wt,y=round(result,2),size= 35,color = "green"))
                        #hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
                        #mu <- input$mu
                        #mse <- mean((galton$child - mu)^2)
                        #text(63, 150, paste("mu = ", input$Weight))
                        #text(63, 140, paste("MSE = ", round(mse, 2)))
                })
                
        }
)

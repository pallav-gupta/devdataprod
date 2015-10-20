MPG Calculator
========================================================
author: Pallav Gupta
date: October 21th, 2015
transition: rotate


Introduction
========================================================

*Looking to buy a car but not sure about its mileage!!!*

Then MPG Calculator is what you need.


Why MPG Calculator?
========================================================

- It's Simple
- It's Fast
- It's available online
- Trained on mtcars dataset extracted from the 1974 Motor Trend US magazine.



```r
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

How is it built? 
========================================================


 - MPG Calculator is built by training a linear prediction model using mtcars dataset.
 - It uses Weight, transmission type and acceleration to estimate MPG.
 
 Below is the plot that shows distribution of original data.
![plot of chunk unnamed-chunk-3](MPG_Calculator-figure/unnamed-chunk-3-1.png) 


Want to try MPG Calculator? 
========================================================

MPG Calculator can be found [Here](https://pallav.shinyapps.io/MPG_Calculator).

Application code is also available publically on [GitHub](https://github.com/pallav-gupta/devdataprod).

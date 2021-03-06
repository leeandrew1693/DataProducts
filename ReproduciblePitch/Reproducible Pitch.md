Reproducible Pitch
========================================================
author: Andrew Lee
date: 7/10/2017
autosize: true

Average MPG for Cars by Cylinder
========================================================
This project contains a shiny appliation that allows you to change the data set by using checkboxes. 

The project demonstrates these skills:

-Building a shiny application

-Building a reproducible presentation

-Displaying reactive output

Average MPG for Cars by Cylinder
========================================================

My shiny application integrates with the mtcars data set to give the user an easy way to change the dataset that they are looking at. By a click of a checkbox, they can add or remove engines with a certain cylinder size from the calculation and graph


Shiny: https://leeandrew1693.shinyapps.io/myapp/

Github: https://github.com/leeandrew1693/DataProducts


Example output of average MPG
========================================================
In the shiny app, we calculate the average MPG of the dataset you've chosen. We use this formula to get the result


```r
mean(mtcars$mpg)
```

```
[1] 20.09062
```

Example graph of dataset
========================================================

![plot of chunk unnamed-chunk-2](Reproducible Pitch-figure/unnamed-chunk-2-1.png)

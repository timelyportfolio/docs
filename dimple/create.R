
## ----setup, tidy = F, cache = F, echo = F--------------------------------
library(rCharts)
options(
  rcharts.mode = 'iframe', 
  rcharts.cdn = TRUE,
  RCHART_WIDTH = 700,
  RCHART_HEIGHT = 390
)
library(knitr)
opts_chunk$set(tidy = F, results = 'asis', comment = NA, results = 'html')


## ----dimple-scatter------------------------------------------------------
#rownames in data.frames are not provided with toJSON
#add names as a column
mtcars.df <- data.frame( car = rownames(mtcars), mtcars )
p1 <- dPlot(mpg ~ wt, groups = c("car","cyl"), data = mtcars.df, type = 'bubble')
#by default dimple rCharts will assign x as a categorical/discrete axis
# and y as a measure/continuous axis
# easily changed as shown in the next step
p1$xAxis( type = "addMeasureAxis" )
p1


## ----results = 'asis', comment = NA, echo = F----------------------------
make_edit_button('dimple-scatter')


## ----dimple-bar----------------------------------------------------------
hair_eye = as.data.frame(HairEyeColor)
p2 <- dPlot(Freq ~ Hair, groups = 'Eye', 
  data = subset(hair_eye, Sex == "Female"), 
  type = 'bar'
)
p2$defaultColors(c('brown', 'blue', '#594c26', 'green'))
p2


## ----results = 'asis', comment = NA, echo = F----------------------------
make_edit_button('dimple-bar')


## ----dimple-bar-horizontal, echo = F-------------------------------------
hair_eye = as.data.frame(HairEyeColor)
#for horizontal bar just switch y and x
#we can do with formula but let's see it with y = "", x = ""
#then specify y as categorical and x as a measure
p3 <- dPlot(x = "Freq", y = "Hair", groups = 'Eye', 
  data = subset(hair_eye, Sex == "Female"), 
  type = 'bar'
)
#here is how we specify y as categorical and x as measure
p3$xAxis ( type = "addMeasureAxis" )
p3$yAxis ( type = "addCategoryAxis" )
p3$defaultColors(c('brown', 'blue', '#594c26', 'green'))
p3


## ----results = 'asis', echo = F, eval = F--------------------------------
## latex_image('dimple-bar-horizontal')


## ----results = 'asis', comment = NA, echo = F----------------------------
make_edit_button('dimple-bar-horizontal')


## ----dimple-line---------------------------------------------------------
data(economics, package = 'ggplot2')
#dimple supports a time axis
#for that we need dimple in a d3 date format
economics$date <- format(economics$date, "%Y-%m-%d")
p6 <- dPlot(uempmed ~ date, data = economics, type = 'line')
#here is how we tell dimple the input and output format of the date
p6$xAxis( 
  type = "addTimeAxis",
  inputFormat = "%Y-%m-%d",
  outputFormat = "%b %Y" 
)
p6


## ----results = 'asis', comment = NA, echo = F----------------------------
make_edit_button('dimple-line')


## ----dimple-area---------------------------------------------------------
dat <- data.frame(
  t = rep(0:23, each = 4), 
  var = rep(LETTERS[1:4], 4), 
  val = round(runif(4*24,0,50))
)
p8 <- dPlot(val ~ t, groups =  'var', data = dat, 
 type = 'area'
)
p8


## ----results = 'asis', comment = NA, echo = F----------------------------
make_edit_button('dimple-area')



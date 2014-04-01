
## ----setup, tidy = F, cache = F, echo = F--------------------------------
library(rCharts)
options(
  rcharts.mode = "iframe",
  rcharts.cdn = TRUE,
  RCHART_WIDTH = 700,
  RCHART_HEIGHT = 390
)
library(knitr)
opts_chunk$set(tidy = F, results = "asis", comment = NA, results = "html")


## ------------------------------------------------------------------------
#get data used by dimple for all of its examples as a first test
data <- read.delim(
  "http://pmsi-alignalytics.github.io/dimple/data/example_data.tsv"
)

### eliminate . to avoid confusion in javascript
colnames(data) <- gsub("[.]","",colnames(data))


## ----example01_bar_vert--------------------------------------------------
### example 1 vt bar
d1 <- dPlot(
  x ="Month" ,
  y = "UnitSales",
  data = data,
  type = "bar"
)
d1$xAxis(orderRule = "Date")
d1


## ----example02_bar_vert_stack--------------------------------------------
### example 2 vt stacked bar
d1 <- dPlot(
  x ="Month" ,
  y = "UnitSales",
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$xAxis(orderRule = "Date")
d1$legend(
  x = 60,
  y = 10,
  width = 700,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example03_bar_vert_100----------------------------------------------
### example 3 vt stacked bar 100%
d1 <- dPlot(
  x ="Month" ,
  y = "UnitSales",
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$xAxis(orderRule = "Date")
d1$yAxis(type = "addPctAxis")
d1$legend(
  x = 60,
  y = 10,
  width = 700,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example04_bar_vert_grp----------------------------------------------
### example 4 vertical grouped bar
d1 <- dPlot(
  x = c("PriceTier","Channel"),
  y = "UnitSales",
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$legend(
  x = 60,
  y = 10,
  width = 700,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example05_bar_vert_stack_grp----------------------------------------
### example 5 vertical stack grouped bar
d1 <- dPlot(
  x = c("PriceTier","Channel"),
  y = "UnitSales",
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example06_bar_vert_stack_100----------------------------------------
### example 6 vertical stack grouped 100% bar
d1 <- dPlot(
  x = c("PriceTier","Channel"),
  y = "UnitSales",
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1$yAxis(type = "addPctAxis")
d1


## ----example07_bar_horiz-------------------------------------------------
### example 7 horizontal bar
d1 <- dPlot(
  Month ~ UnitSales,
  data = data,
  type = "bar"
)
d1$xAxis(type = "addMeasureAxis")
#good test of orderRule on y instead of x
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1


## ----example08_bar_horiz_stack-------------------------------------------
### example 8 horizontal stacked bar
d1 <- dPlot(
  Month ~ UnitSales,
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addMeasureAxis")
#good test of orderRule on y instead of x
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example09_bar_horiz_stack_100---------------------------------------
### example 9 horizontal stacked 100% bar
d1 <- dPlot(
  Month ~ UnitSales,
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addPctAxis")
#good test of orderRule on y instead of x
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example10_bar_horiz_grp---------------------------------------------
### example 10 horizontal stacked bar
d1 <- dPlot(
  x = "UnitSales", 
  y = c("PriceTier","Channel"),
  groups = "Channel",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example11_bar_horiz_stack_grp---------------------------------------
### example 11 horizontal stacked grouped bar
d1 <- dPlot(
  x = "UnitSales", 
  y = c("PriceTier","Channel"),
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addMeasureAxis")
#good test of orderRule on y instead of x
d1$yAxis(type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example12_bar_horiz_stack_100---------------------------------------
### example 12 horizontal stacked grouped 100% bar
d1 <- dPlot(
  x = "UnitSales", 
  y = c("PriceTier","Channel"),
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addPctAxis")
#good test of orderRule on y instead of x
d1$yAxis(type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example13_marimekko_vert--------------------------------------------
#require(devtools)
#install_github('rCharts', 'ramnathv')
require(rCharts)

#get data used by dimple for all of its examples as a first test
data <- read.delim(
  "http://pmsi-alignalytics.github.io/dimple/data/example_data.tsv"
)

### eliminate . to avoid confusion in javascript
colnames(data) <- gsub("[.]","",colnames(data))

### example 13 vertical marimekko
d1 <- dPlot(
  UnitSales ~ Channel,
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$xAxis(type = "addAxis", measure = "UnitSales", showPercent = TRUE)
d1$yAxis(type = "addPctAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
#test with storyboard
d1$set(storyboard = "Date")
d1


## ----example14_marimekko_horiz-------------------------------------------
### example 14 horizontal marimekko
d1 <- dPlot(
  Channel ~ UnitSales,
  groups = "Owner",
  data = data,
  type = "bar"
)
d1$yAxis(type = "addAxis", measure = "UnitSales", showPercent = TRUE)
d1$xAxis(type = "addPctAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example15_block_matrix----------------------------------------------
### example 15 block matrix
d1 <- dPlot(
  x = c("Channel","PriceTier"),
  y = "Owner",
  groups = "PriceTier",
  data = data,
  type = "bar"
)
d1$yAxis(type = "addCategoryAxis")
d1$xAxis(type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 400,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example16_scatter---------------------------------------------------
### example 16 Scatter
d1 <- dPlot(
  OperatingProfit~UnitSales,
  groups = c("SKU","Channel"),
  data = subset(data, Date == "01/12/2012"),
  type = "bubble"
)
d1$xAxis( type = "addMeasureAxis" )
d1$yAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example18_lollipop_vert_grp-----------------------------------------
### example 18 Vertical Grouped Lollipop
d1 <- dPlot(
  y = "UnitSales",
  x = c("PriceTier","Channel"),
  groups = "Channel",
  data = data,
  type = "bubble"
)
#defaults to yAxis (Measure) and xAxis (Category)
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example19_lollipop_horiz--------------------------------------------
### example 19 Horizontal Lollipop
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  groups = "Channel",
  data = data,
  type = "bubble"
)
d1$xAxis( type = "addMeasureAxis" )
d1$yAxis( type = "addCategoryAxis", orderRule = "Date")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example20_lollipop_horiz_grp----------------------------------------
### example 20 Horizontal Grouped Lollipop
d1 <- dPlot(
  x = "UnitSales",
  y = c("PriceTier","Channel"),
  groups = "Channel",
  data = data,
  type = "bubble"
)
d1$xAxis( type = "addMeasureAxis" )
d1$yAxis( type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example21_dot_matrix------------------------------------------------
### example 21 Dot Matrix
d1 <- dPlot(
  y = "Owner",
  x = c("Channel","PriceTier"),
  groups = "PriceTier",
  data = data,
  type = "bubble"
)
d1$xAxis( type = "addCategoryAxis" )
d1$yAxis( type = "addCategoryAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example22_bubble----------------------------------------------------
### example 22 Bubble
d1 <- dPlot(
  x = "UnitSalesMonthlyChange",
  y = "PriceMonthlyChange",
  z = "OperatingProfit",
  groups = c("SKU","Channel"),
  data = subset(data, Date == "01/12/2012"),
  type = "bubble"
)
d1$xAxis( type = "addMeasureAxis" )
d1$yAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example23_bubble_lollipop_vert--------------------------------------
### example 23 Vertical Bubble Lollipop
d1 <- dPlot(
  x = "Month",
  y = "UnitSales",
  z = "OperatingProfit",
  groups = "Channel",
  data = subset(
    data,
    Date %in% c(
      "01/07/2012",
      "01/08/2012",
      "01/09/2012",
      "01/10/2012",
      "01/11/2012",
      "01/12/2012"
    )
  ),
  type = "bubble"
)
d1$xAxis( type = "addCategoryAxis", orderRule = "Date" )
d1$yAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example24_bubble_lollipop_vert_grp----------------------------------
### example 24 Vertical Grouped Bubble Lollipop
d1 <- dPlot(
  x = c("PriceTier","Channel"),
  y = "UnitSales",
  z = "OperatingProfit",
  groups = "Channel",
  data = subset(
    data,
    Date %in% c(
      "01/07/2012",
      "01/08/2012",
      "01/09/2012",
      "01/10/2012",
      "01/11/2012",
      "01/12/2012"
    )
  ),
  type = "bubble"
)
d1$xAxis( type = "addCategoryAxis" )
d1$yAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example25_bubble_lollipop_horiz-------------------------------------
### example 25 Horizontal Bubble Lollipop
d1 <- dPlot(
  y = "Month",
  x = "UnitSales",
  z = "OperatingProfit",
  groups = "Channel",
  data = subset(
    data,
    Date %in% c(
      "01/07/2012",
      "01/08/2012",
      "01/09/2012",
      "01/10/2012",
      "01/11/2012",
      "01/12/2012"
    )
  ),
  type = "bubble"
)
d1$yAxis( type = "addCategoryAxis", orderRule = "Date" )
d1$xAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example26_bubble_lollipop_horiz_grp---------------------------------
### example 26 Horizontal Grouped Bubble Lollipop
d1 <- dPlot(
  y = c("PriceTier","Channel"),
  x = "UnitSales",
  z = "OperatingProfit",
  groups = "Channel",
  data = subset(
    data,
    Date %in% c(
      "01/07/2012",
      "01/08/2012",
      "01/09/2012",
      "01/10/2012",
      "01/11/2012",
      "01/12/2012"
    )
  ),
  type = "bubble"
)
d1$yAxis( type = "addCategoryAxis" )
d1$xAxis( type = "addMeasureAxis" )
d1$zAxis( type = "addMeasureAxis" )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example27_bubble_matrix---------------------------------------------
### example 27 Bubble Matrix
d1 <- dPlot(
  x = c( "Channel", "PriceTier"),
  y = "Owner",
  z = "Distribution",
  groups = "PriceTier",
  data = data,
  type = "bubble",
  aggregate = "dimple.aggregateMethod.max"
)
d1$xAxis( type = "addCategoryAxis" )
d1$yAxis( type = "addCategoryAxis" )
d1$zAxis( type = "addMeasureAxis", overrideMax = 200 )
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example28_area------------------------------------------------------
### example 28 Area
d1 <- dPlot(
  UnitSales ~ Month,
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area"
)
d1$xAxis(type = "addCategoryAxis", orderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1


## ----example29_area_stack------------------------------------------------
### example 29 Stacked Area
d1 <- dPlot(
  UnitSales ~ Month,
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area"
)
d1$xAxis(type = "addCategoryAxis", orderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example30_area_stack_100--------------------------------------------
### example 30 Stacked Area 100%
d1 <- dPlot(
  UnitSales ~ Month,
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area"
)
d1$xAxis(type = "addCategoryAxis", orderRule = "Date")
d1$yAxis(type = "addPctAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example31_area_grp--------------------------------------------------
### example 31 Grouped Area
d1 <- dPlot(
  y = "UnitSales",
  x = c("Owner","Month"),
  groups = "Owner",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area"
)
d1$xAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example32_area_grp_stack--------------------------------------------
### example 32 Grouped Stacked Area
d1 <- dPlot(
  y = "UnitSales",
  x = c("Owner","Month"),
  groups = "SKU",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=70,y=30,height=340,width=330),
  barGap = 0.05,
  lineWeight = 1,
  height = 400,
  width = 590
)
d1$xAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1$legend(
  x = 430,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example33_area_grp_stack_100----------------------------------------
### example 33 Grouped Stacked Area 100%
d1 <- dPlot(
  y = "UnitSales",
  x = c("Owner","Month"),
  groups = "SKU",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=70,y=30,height=340,width=330),
  barGap = 0.05,
  lineWeight = 1,
  height = 400,
  width = 590
)
d1$xAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$yAxis(type = "addPctAxis")
d1$legend(
  x = 430,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example34_area_vert-------------------------------------------------
### example 34 Vertical Area
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=80,y=30,height=480,width=330),
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1


## ----example35_area_vert_stack-------------------------------------------
### example 35 Vertical Stacked Area
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=80,y=30,height=480,width=330),
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$legend(
  x = 60,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example36_area_vert_stack_100---------------------------------------
### example 36 Vertical 100% Stacked Area
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=80,y=30,height=480,width=330),
  height = 400,
  width = 590
)
d1$xAxis(type = "addPctAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$legend(
  x = 60,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example37_area_vert_grp---------------------------------------------
### example 37 Vertical Grouped Area
d1 <- dPlot(
  x = "UnitSales",
  y = c("Owner","Month"),
  groups = "Owner",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=90,y=30,height=470,width=330),
  lineWeight = 1,
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1


## ----example38_area_vert_grp_stack---------------------------------------
### example 38 Vertical Grouped Stacked Area
d1 <- dPlot(
  x = "UnitSales",
  y = c("Owner","Month"),
  groups = "SKU",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=90,y=30,height=320,width=330),
  lineWeight = 1,
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$legend(
  x = 430,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example39_area_vert_grp_stack_100-----------------------------------
### example 39 Vertical Grouped Stacked Area 100%
d1 <- dPlot(
  x = "UnitSales",
  y = c("Owner","Month"),
  groups = "SKU",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "area",
  bounds = list(x=90,y=30,height=320,width=330),
  lineWeight = 1,
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addPctAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$legend(
  x = 430,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example40_line------------------------------------------------------
### example 40 Line
d1 <- dPlot(
  UnitSales ~ Month,
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line"
)
d1$xAxis(type = "addCategoryAxis", orderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1


## ----example41_line_mult-------------------------------------------------
### example 41 Multiple Line
d1 <- dPlot(
  UnitSales ~ Month,
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line"
)
d1$xAxis(type = "addCategoryAxis", orderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1$legend(
  x = 200,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example42_line_single_grp-------------------------------------------
### example 42 Grouped Single Line
d1 <- dPlot(
  y = "UnitSales",
  x = c("Owner","Month"),
  groups = "Owner",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  barGap = 0.05
)
d1$xAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1


## ----example43_line_mult_grp---------------------------------------------
### example 43 Grouped Multiple line
d1 <- dPlot(
  y = "UnitSales",
  x = c("Owner","Month"),
  groups = "Brand",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  bounds = list(x=70,y=30,height=420,width=330),
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$yAxis(type = "addMeasureAxis")
d1$legend(
  x = 510,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example44_line_vert-------------------------------------------------
### example 44 Vertical Line
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  bounds = list(x=80,y=30,height=480,width=330),
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1


## ----example45_line_vert_mult--------------------------------------------
### example 45 Vertical Multiple Line
d1 <- dPlot(
  x = "UnitSales",
  y = "Month",
  groups = "Channel",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  bounds = list(x=80,y=30,height=480,width=330),
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", orderRule = "Date")
d1$legend(
  x = 60,
  y = 10,
  width = 500,
  height = 20,
  horizontalAlign = "right"
)
d1


## ----example46_line_vert_grp---------------------------------------------
###e xample 46 Vertical Grouped Line
d1 <- dPlot(
  x = "UnitSales",
  y = c("Owner","Month"),
  groups = "Owner",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  bounds = list(x=90,y=30,height=470,width=330),
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1


## ----example47_line_vert_mult_grp----------------------------------------
### example 47 Vertical Grouped Multi Line
d1 <- dPlot(
  x = "UnitSales",
  y = c("Owner","Month"),
  groups = "Brand",
  data = subset(data, Owner %in% c("Aperture","Black Mesa")),
  type = "line",
  bounds = list(x=90,y=30,height=320,width=330),
  barGap = 0.05,
  height = 400,
  width = 590
)
d1$xAxis(type = "addMeasureAxis")
d1$yAxis(type = "addCategoryAxis", grouporderRule = "Date")
d1$legend(
  x = 430,
  y = 20,
  width = 100,
  height = 300,
  horizontalAlign = "left"
)
d1


## ----example51_rCharts_issue164------------------------------------------
require(rjson)
require(rCharts)

data <- data.frame(rjson::fromJSON('{"Zscore": [  1.594,  0.024,  5.231,  3.933,  6.222,  0.164,  3.324,  2.913,  3.357,  4.041,  5.082,  2.727,  2.739,  3.042,  2.308,  0.286,  1.965,  3.534,  1.518,  4.553,  0.937,  5.124,    0.4,  2.467,  1.475,  1.591,  2.943,  2.081,  3.083,  4.252,  3.951,  3.006,  3.578,  3.332,  3.641,  1.918,  4.157,  1.074,  3.416,  1.729, -0.229,  2.765, -0.071,  0.321,  4.151,  2.497,  2.295,  0.911,  1.949,  3.285,      3,  -1.23, -0.894,  0.853,   3.59,  3.643,  1.772,  2.276,  2.301,  3.088,   0.07,  2.422,  1.572,  1.864,  0.408,  0.838,  1.202, -0.645,  0.794,  0.866,  1.978,   1.14,  0.603,  3.268, -1.378,  2.304,  2.038,  1.275,  1.486,  2.979,  1.657,  1.726,  3.169,  0.607,  4.511,  1.238,   0.71,  2.314,   0.68, -0.239,  2.588,  2.258,  0.951,  0.723,  1.665,  3.637,  3.317,  1.984,  1.638,  2.151,   2.29,  1.535,  0.732,  0.833,  2.519,  0.929,   2.12,  0.301,  0.817,   1.95,  2.226,  1.785,   1.66,  1.131,  0.883,  1.529,  2.457,  5.625,  1.475,  1.422,  2.935,  3.513,  2.931,  0.927, -0.246 ],
"Cell": [ "HTR8svn", "Adult_CD4+", "CD14+", "CD20+", "CD34+", "CLL", "CMK", "GM06990", "GM12864", "GM12865", "GM12878", "GM12891", "GM12892", "GM18507", "GM19238", "GM19239", "GM19240", "HL-60", "Jurkat", "K562", "NB4", "Th1", "Th2", "AoAF", "AoSMC", "HBMEC", "HMVEC-dAd", "HMVEC-dBl-Ad", "HMVEC-dBl-Neo", "HMVEC-dLy-Ad", "HMVEC-dLy-Neo", "HMVEC-dNeo", "HMVEC-LBl", "HMVEC-LLy", "HPAEC", "HPAF", "HUVEC", "Osteobl", "BE2_C", "Gliobla", "Medullo", "SK-N-MC", "SK-N-SH", "HA-h", "HMEC", "HMF", "MCF-7", "MCF-7", "T-47D", "HAc", "HeLa-S3", "HeLa-S3", "Caco-2", "HCT-116", "HVMF", "WI-38", "WI-38", "A549", "HAEpiC", "HCPEpiC", "HEEpiC", "HIPEpiC", "HNPCEpiC", "HPdLF", "HRCEpiC", "HRE", "HRPEpiC", "pHTE", "RPTEC", "SAEC", "HESC", "hESCT0", "H9ES", "HConF", "WERI-Rb-1", "Chorion", "HFF", "HFF-Myc", "AG09319", "HGF", "HCFaa", "HCF", "HCM", "iPS", "HRGEC", "8988T", "Hepatocytes", "HepG2", "Huh-7.5", "Huh-7", "Stellate", "AG04450", "HPF", "NHLF", "E_myoblast", "HSMM", "HSMM", "SKMC", "Myometr", "NH-A", "PANC-1", "PanIsletD", "PanIslets", "HPDE6-E6E7", "LNCaP", "LNCaP", "PrEC", "RWPE1", "AG04449", "AG09309", "AG10803", "BJ", "Fibrobl", "FibroP", "Melano", "NHDF-Ad", "NHDF-neo", "NHEK", "ProgFib", "HA-sp", "NT2-D1", "Urothelia", "Urothelia", "Ishikawa", "Ishikawa" ],
"Tissue": [ "Blastula", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Blood vessel", "Bone", "Brain", "Brain", "Brain", "Brain", "Brain", "Brain hippocampus", "Breast", "Breast", "Breast", "Breast", "Breast", "Cerebellar", "Cervix", "Cervix", "Colon", "Colon", "Connective", "Embryonic lung", "Embryonic lung", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "Epithelium", "ES cell", "ES cell", "ES cell", "Eye", "Eye", "Fetal membrane", "Foreskin", "Foreskin", "Gingival", "Gingival", "Heart", "Heart", "Heart", "IPS", "Kidney", "Liver", "Liver", "Liver", "Liver", "Liver", "Liver", "Lung", "Lung", "Lung", "Muscle", "Muscle", "Muscle", "Muscle", "Myometrium", "Nervous", "Pancreas", "Pancreas", "Pancreas", "Pancreatic duct", "Prostate", "Prostate", "Prostate", "Prostate", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Skin", "Spinal cord", "Testis", "Urothelium", "Urothelium", "Uterus", "Uterus" ],
                         "Colour": [      2,      2,      0,      0,      0,      2,      1,      1,      1,      0,      0,      1,      1,      1,      2,      2,      2,      0,      2,      0,      2,      0,      2,      2,      2,      2,      1,      2,      1,      0,      0,      1,      0,      1,      0,      2,      0,      2,      0,      2,      2,      1,      2,      2,      0,      2,      2,      2,      2,      1,      1,      2,      2,      2,      0,      0,      2,      2,      2,      1,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      1,      2,      2,      2,      2,      2,      1,      2,      2,      1,      2,      0,      2,      2,      2,      2,      2,      1,      2,      2,      2,      2,      0,      1,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      2,      0,      2,      2,      1,      1,      1,      2,      2 ] 
                         }'))

d1 <- dPlot(
  y = "Zscore",
  x = "Cell",
  groups = "Colour",
  data = data,
  type = "bubble",
  width = 1000,
  height = 600,
  bounds = list(x=90,y=30,height=500,width=850)
)
d1$xAxis( type = "addCategoryAxis", orderRule = "Cell" )
d1$yAxis( type = "addMeasureAxis" )
d1$colorAxis(
  type = "addColorAxis",
  colorSeries = "Zscore",
  palette = c("red","yellow","green") )
d1



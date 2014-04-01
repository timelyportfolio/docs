
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


## ------------------------------------------------------------------------
#get data used by dimple for all of its examples as a first test
data <- read.delim(
  "http://pmsi-alignalytics.github.io/dimple/data/example_data.tsv"
)

### eliminate . to avoid confusion in javascript
colnames(data) <- gsub("[.]","",colnames(data))


## ----echo = F------------------------------------------------------------
make_example_pages <- function(exDir){
  rFiles = dir(exDir, pattern = "^example.*\\.R$")
  examples <- sapply(rFiles[1:2],
    function(x){
      c(
        x
        ,"--------------"
        ,"\n"
        ,".. raw:: html\n"
        ,paste0("  ",capture.output(create_chart(paste0(exDir,"/",x))$show()))
        ,"\n"
        ,":download:`Standalone <_downloads/dimple-scatter.html>`"
        ,"\n\n"
      )
    }
  )
  return(examples)
}


## ----results = 'asis'----------------------------------------------------
cat(make_example_pages("./_gallery"),sep="\n")



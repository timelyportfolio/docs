.. _nvd3_charttypes:

Create
=======

.. raw:: html

   <style>iframe.rChart{margin-bottom: 20px;}</style>

The `dimple <http://dimplejs.org>`_ library supports most of the common chart types. 

.. contents::
   :local:
   :depth: 1


You can create an interactive plot making use of the dimple library using the :func:`dPlot` function.  We will go through the basics of each plot type and adjust the parameters slightly.  For more thorough documentation of the API, see `API docs <>`_.  For more examples, see <`Dimple gallery <http://timelyportfolio.github.io/rCharts_dimple/gallery>`_.

.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - x
      - formula or string
      - formula y \~ x or string x = "" or x=c("","",..) with column names from the data frame
    * - y
      - string or strings
      - y = "" or y = c("","",...) with column names from the data frame
    * - z
      - string
      - z = "" with column names from the data frame
    * - groups
      - string or strings
      - groups = "" or groups = c("","",...)
    * - data
      - data frame
      - A data frame containing the data to be plotted
    * - type
      - string
      - The type of chart to plot







Scatter/bubble Chart
--------------


.. sourcecode:: r
    

    #rownames in data.frames are not provided with toJSON
    #add names as a column
    mtcars.df <- data.frame( car = rownames(mtcars), mtcars )
    p1 <- dPlot(mpg ~ wt, groups = c("car","cyl"), data = mtcars.df, type = 'bubble')
    #by default dimple rCharts will assign x as a categorical/discrete axis
    # and y as a measure/continuous axis
    # easily changed as shown in the next step
    p1$xAxis( type = "addMeasureAxis" )
    p1


.. only:: html

    
    .. raw:: html
        
    
        <iframe src='
        ../_downloads/dimple-scatter.html
        ' scrolling='no' seamless
        class='rChart dimple '
        id=iframe-
        chart2fa813e855d
        ></iframe>
        <style>iframe.rChart{ width: 100%; height: 400px;}</style>





.. raw:: html
    

    
        <a href="../playground.html#?n=dimple-scatter" class="btn btn-success btn-mini float-right" target="_blank">
          <span class="fa fa-edit"></span> Edit
        </a><br/>
      


:download:`Standalone <_downloads/dimple-scatter.html>`

Bar Chart
--------------


.. sourcecode:: r
    

    hair_eye = as.data.frame(HairEyeColor)
    p2 <- dPlot(Freq ~ Hair, groups = 'Eye', 
      data = subset(hair_eye, Sex == "Female"), 
      type = 'bar'
    )
    p2$defaultColors(c('brown', 'blue', '#594c26', 'green'))
    p2


.. only:: html

    
    .. raw:: html
        
    
        <iframe src='
        ../_downloads/dimple-bar.html
        ' scrolling='no' seamless
        class='rChart dimple '
        id=iframe-
        chart2fa840e835f1
        ></iframe>
        <style>iframe.rChart{ width: 100%; height: 400px;}</style>





.. raw:: html
    

    
        <a href="../playground.html#?n=dimple-bar" class="btn btn-success btn-mini float-right" target="_blank">
          <span class="fa fa-edit"></span> Edit
        </a><br/>
      


:download:`Standalone <_downloads/dimple-bar.html>`


Bar Horizontal Chart
-------------------------



.. only:: html

    
    .. raw:: html
        
    
        <iframe src='
        ../_downloads/dimple-bar-horizontal.html
        ' scrolling='no' seamless
        class='rChart dimple '
        id=iframe-
        chart2fa85f066b4c
        ></iframe>
        <style>iframe.rChart{ width: 100%; height: 400px;}</style>








.. raw:: html
    

    
        <a href="../playground.html#?n=dimple-bar-horizontal" class="btn btn-success btn-mini float-right" target="_blank">
          <span class="fa fa-edit"></span> Edit
        </a><br/>
      


:download:`Standalone <_downloads/dimple-bar-horizontal.html>`

Line Chart
-----------


.. sourcecode:: r
    

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


.. only:: html

    
    .. raw:: html
        
    
        <iframe src='
        ../_downloads/dimple-line.html
        ' scrolling='no' seamless
        class='rChart dimple '
        id=iframe-
        chart2fa84165f
        ></iframe>
        <style>iframe.rChart{ width: 100%; height: 400px;}</style>





.. raw:: html
    

    
        <a href="../playground.html#?n=dimple-line" class="btn btn-success btn-mini float-right" target="_blank">
          <span class="fa fa-edit"></span> Edit
        </a><br/>
      


:download:`Standalone <_downloads/dimple-line.html>`

Area Chart
-------------------


.. sourcecode:: r
    

    dat <- data.frame(
      t = rep(0:23, each = 4), 
      var = rep(LETTERS[1:4], 4), 
      val = round(runif(4*24,0,50))
    )
    p8 <- dPlot(val ~ t, groups =  'var', data = dat, 
     type = 'area'
    )
    p8


.. only:: html

    
    .. raw:: html
        
    
        <iframe src='
        ../_downloads/dimple-area.html
        ' scrolling='no' seamless
        class='rChart dimple '
        id=iframe-
        chart2fa87fc650
        ></iframe>
        <style>iframe.rChart{ width: 100%; height: 400px;}</style>





.. raw:: html
    

    
        <a href="../playground.html#?n=dimple-area" class="btn btn-success btn-mini float-right" target="_blank">
          <span class="fa fa-edit"></span> Edit
        </a><br/>
      


:download:`Standalone <_downloads/dimple-area.html>`

Pie and Donut Charts
----------

Pie and donut charts are not currently provided in dimple (see `issue <_https://github.com/PMSI-AlignAlytics/dimple/issues/47>`) .



.. raw:: html

  <br/><br/>
  <style>
    iframe.rChart{margin-bottom: 20px;}
    a.download{display: none;}
    a.button{color: black;}
    #rickshaw iframe.rChart{height: 450px;}</style>
  </style>

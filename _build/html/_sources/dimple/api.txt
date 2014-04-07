.. _api:

dimple/rCharts API
=====

In most cases the rCharts/dimple plugin has attempted to map the `dimple API <https://github.com/PMSI-AlignAlytics/dimple/wiki>`_ on a one-to-one basis while keeping rCharts reference class methods consistent.

.. contents::
   :local:
   :depth: 1

dPlot
-----

You can create an interactive plot making use of the dimple library using the :func:`dPlot` function.  The minimal parameters are listed in the table below.  The primary difference with dimple and other rCharts libraries is that arrays can be provided for x, y, and groups for pivot like functionality.

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
    * - data
      - data frame
      - A data frame containing the data to be plotted
    * - type
      - string
      - The type of chart to plot `"line" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.plot#line>`_ , `"bubble" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.plot#bubble>`_ , `"bar" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.plot#bar>`_ , `"area" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.plot#area>`_
    * - z (optional)
      - string
      - z = "" with column names from the data frame
    * - groups (optional)
      - string or strings
      - groups = "" or groups = c("","",...)



Beyond this basic specification, there are numerous opportunities for customization as shown with the methods and parameters below.

xAxis, yAxis, zAxis
-----

dimple API: `dimple.axis <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis>`_

xAxis, yAxis, and zAxis will gets passed in the JSON spec as opts.xAxis, ...  By default rCharts will assign the x axis as `addCategoryAxis <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addCategoryAxis>`_ (categorical/discrete) and y axis as `addMeasureAxis <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addMeasureAxis>`_ (continuous/numeric).

Arguments
~~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - type
      - string
      - `"addMeasureAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addMeasureAxis>`_, `"addCategoryAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addCategoryAxis>`_, `"addTimeAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addTimeAxis>`_, `"addPctAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addPctAxis>`_ .
    * - `orderRule <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#addOrderRule>`_
      - string or array
      - add a rule by which the values in a category axis will be ordered
    * - `grouporderRule <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#addGroupOrderRule>`_
      - string or array
      - add a rule by which the values in a group on a category axis will be ordered
    * - `overrideMin <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#overrideMin>`_
      - generally numeric
      - manually override minimum for the axis
    * - `overrideMax <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#overrideMax>`_
      - generally numeric
      - manually override maximum for the axis
    * - `inputFormat <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#dateParseFormat>`_  **only for "addTimeAxis"**
      - string
      - d3 time parse format using `d3 time formatting <https://github.com/mbostock/d3/wiki/Time-Formatting>`_
    * - `outputFormat  <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.axis#tickFormat>`_
      - string
      - formatting for the axis using the `d3 time formatting <https://github.com/mbostock/d3/wiki/Time-Formatting>`_ or `d3 formatting style <https://github.com/mbostock/d3/wiki/Formatting>`_ 

Usage
~~~~~

Axis specifications can be provided in 3 ways.

.. code::
    
    d1 <- dPlot(...)
    d1$[x,y,z]Axis(...)

.. code::

    d1 <- dPlot(
      [x,y,z]Axis = list(...)
    )

Details
~~~~~~

Provide sample usages and an example similar to the gallery/create sections.


legend
-----

dimple API: `dimple.chart.legends <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addLegend>`_


Arguments
~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - x
      - number or string %
      - x coordinate of the left corner of the legend
    * - y
      - number or string %
      - y coordinate of the top of the legend
    * - width
      - number or string %
      - width of the legend
    * - height
      - number or string %
      - height of the legend
    * - horizontalAlign (optional)
      - string "left" or "right"; "left" is default
      - horizontal positioning of legend elements within the bounds defined

Usage
~~~~~

Legends can be provided in 3 ways.

.. code::

    dPlot(...,legend = list(x=,y=,height=,width=,horizontalAlign=))

.. code::

    d1 <- dPlot(...)
    d1$legend(x=,y=,height=,width=,horizontalAlign=)

.. code::

    d1 <- dPlot(...)
    d1$set(legend = list(x=,y=,height=,width=,horizontalAlign=))

Details
~~~~~


storyboard
-----

dimple API: `dimple.chart.storyboard <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#storyboard>`_


Arguments
~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - series
      - string
      - series for which we want dimple to use to animate the chart

Usage
~~~~~

Storyboards can be provided in 2 ways.  Currently, storyboards do not have a method specifically assigned.

.. code::

    dPlot(...,storyboard = "series_for_storyboard")

.. code::

    d1 <- dPlot(...)
    d1$set(storyboard = "series_for_storyboard")

Details
~~~~~



lineWeight
-----

dimple API: `dimple.series.lineWeight <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.series#lineWeight>`_

Arguments
~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - width
      - number (default = 2)
      - numeric value used to determine the weight of the line in a line chart or area chart in pixels


Usage
~~~~~

lineWidth can be provided in 2 ways.  Currently, lineWidth does not have a method specifically assigned.

.. code::

    dPlot(...,lineWidth = width)

.. code::

    d1 <- dPlot(...)
    d1$set(lineWidth = width)

Details
~~~~~


barGap
-----

dimple API: `dimple.series.barGap <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.series#barGap>`_

Arguments
~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - width
      - number (default = 0.4)
      - numeric value used to determine the weight of the line in a line chart or area chart in pixels

Usage
~~~~~

barGap can be provided in 2 ways.  Currently, barGap does not have a method specifically assigned.

.. code::

    dPlot(...,barGap = gap)

.. code::

    d1 <- dPlot(...)
    d1$set(barGap = gap)

Details
~~~~~


aggregate
-----

dimple API: `dimple.series.aggregate <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.series#aggregate>`_

Arguments
~~~~~
.. list-table:: 
    :widths: 25 25 70
    :header-rows: 1

    * - Argument
      - Type
      - Description
    * - aggregate function
      - string (avg, count, max, min, sum) `see dimple code <https://github.com/PMSI-AlignAlytics/dimple/tree/master/src/objects/aggregateMethod>`_
      - aggregate function provided by dimple to specify how values are aggregated in a series

Usage
~~~~~

aggregate can be provided in 2 ways.  Currently, aggregate does not have a method specifically assigned.

.. code::

    dPlot(...,aggregate = aggregatefunction)

.. code::

    d1 <- dPlot(...)
    d1$set(aggregate = aggregatefunction)

Details
~~~~~


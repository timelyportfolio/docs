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
      - `"addMeasureAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addMeasureAxis>`_, `"addCategoryAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addCategoryAxis>`_, `"addTimeAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addTimeAxis>`_, `"addPctAxis" <https://github.com/PMSI-AlignAlytics/dimple/wiki/dimple.chart#addPctAxis>`_.
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



Details
~~~~~~

Provide sample usages and an example similar to the gallery/create sections.


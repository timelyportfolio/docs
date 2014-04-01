.. _dimple_gallery:

Gallery
=======

.. raw:: html

   <style>iframe.rChart{margin-bottom: 20px;}</style>

The `dimple <http://dimplejs.org>`_ library offers a wealth of common and uncommon chart types.

.. contents::
   :local:
   :depth: 1






We will use the same data source that dimple uses for its example gallery.


.. sourcecode:: r
    

    #get data used by dimple for all of its examples as a first test
    data <- read.delim(
      "http://pmsi-alignalytics.github.io/dimple/data/example_data.tsv"
    )
    
    ### eliminate . to avoid confusion in javascript
    colnames(data) <- gsub("[.]","",colnames(data))





.. sourcecode:: r
    

    cat(make_example_pages("./_gallery"),sep="\n")
example01_bar_vert.R
--------------


.. raw:: html

  <iframe src='
  _downloads/unnamed-chunk-3.html
  ' scrolling='no' seamless
  class='rChart dimple '
  id=iframe-
  chart2f5472a51a2c
  ></iframe>
  <style>iframe.rChart{ width: 100%; height: 400px;}</style>


:download:`Standalone <_downloads/dimple-scatter.html>`



example02_bar_vert_stack.R
--------------


.. raw:: html

  <iframe src='
  _downloads/unnamed-chunk-3.html
  ' scrolling='no' seamless
  class='rChart dimple '
  id=iframe-
  chart2f5443964445
  ></iframe>
  <style>iframe.rChart{ width: 100%; height: 400px;}</style>


:download:`Standalone <_downloads/dimple-scatter.html>`







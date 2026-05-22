GRPlot
=========

GRPlot allows plots to be created from the command line using simple key-value pairs as arguments. These are then
converted into GRM containers, which are used to plot the data while respecting the set :code:`GKS_WSTYPE`.
Alternatively, a sender-receiver mechanism could be used. The following sections explain how to use GRPlot and what can
be achieved with it. GRPlot can also be used in Julia if :code:`ENV["GRDISPLAY"] = "plot"` is set.


.. toctree::

   tutorial.rst
   plot_types.rst
   key_value_pairs.rst
   data_files.rst
   editor.rst

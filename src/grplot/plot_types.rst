What can be achieved with GRPlot?
=================================

Plot kinds
----------

barplot
```````

A bar plot is used to display the relation between a numeric variable and a categorical variable. The resulting bars
represent the frequency or quantity of the different data categories. It can be easily created from the command line by
setting the ``kind`` to ``barplot``. The ``style`` key thereby defines how the bar plot series are placed next to each
other, out of three possible options. The left one uses the ``lined`` option, while the right one uses the ``stacked``
option. The following example uses the barplot_ data file. More information's about the format of these files can be
found under data_file_.

.. code-block:: bash

   grplot barplot.dat kind:barplot style:lined

Additional key-value pairs can be included in the data header. The x- and y-columns parameter defines which columns are
used for the x- and y-data.

.. code-block:: bash

    # title : Test
    # x_label : x
    # y_label : y
    # x_columns:1
    # y_columns:2,3,4

|barplot1| |barplot2|

Another example is a ``default`` bar plot that includes the ``bar_width`` parameter, which is used to adjust the width
of the bars. In this case the barplot2_ data file is used.

.. code-block:: bash

   grplot barplot2.dat kind:barplot bar_width:1

Additional key-value pairs are included in the data header. The y-labels are applied to specific bars, while the leading
number indicate how many labels there are.

.. code-block:: bash

    # title : Default style
    # y_labels : 7,6,10, ,3, , ,2

|barplot3|

Following parameters can be used:

:ref:`bar_color <link-barcolor>`, :ref:`bar_width <link-barwidth>`, :ref:`bottom <link-bottom>`,
:ref:`columns <link-columns>`, :ref:`edge_color <link-edgecolor>`, :ref:`edge_width <link-edgewidth>`,
:ref:`error <link-error>`, :ref:`error_bar_style <link-errorbarstyle>`, :ref:`error_columns <link-errorcolumns>`,
:ref:`error_type <link-errortype>`, :ref:`equal_up_and_down_error <link-equalerror>`, :ref:`file <link-file>`,
:ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`kind <link-kind>`, :ref:`left <link-left>`, :ref:`orientation <link-orientation>`,  :ref:`right <link-right>`,
:ref:`style <link-style>`, :ref:`title <link-title>`, :ref:`top <link-top>`, :ref:`twin_x <link-twinx>`,
:ref:`twin_y <link-twiny>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`,
:ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xye_file <link-xyefile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_labels <link-ylabels>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`

contour
```````

A contour plot displays three-dimensional data over a rectangular grid. Contour lines representing different height
values are displayed depending on the specified number of ``levels``. This contour plot uses the sans_ dataset. The
title and axis labels are defined in the data header. More information's about the format of these files can be found
under data_file_.

.. code-block:: bash

    # title : Neutron scatter plot
    # x_label : $Q_x (Å^{-1})$
    # y_label : $Q_y (Å^{-1})$

To create a contour plot from the command line, set the ``kind`` parameter to ``contour``. The additional ``cmap``
parameter can be used to change the `colormap </colormaps.html>`_.

.. code-block:: bash

   grplot sans.dat kind:contour cmap:3

|contour1|

The following picture shows some other options, where the number of levels is 40 instead of 20. Any ``major_h`` value
greater than 1000 results in numbers appearing on the contour lines, while ``x_log`` is used to improve visibility of
the numbers.

.. code-block:: bash

   grplot sans.dat kind:contour levels:40 major_h:1003 x_log:1 cmap:3

|contour2|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`levels <link-levels>`, :ref:`major_h <link-majorh>`, :ref:`only_square_aspect_ratio <link-squareaspectratio>`,
:ref:`title <link-title>`, :ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

contourf
````````

A contourf plot displays three-dimensional data over a rectangular mesh. Depending on the specified number of levels,
contour lines representing different height values are displayed. The space between the contour lines is filled with a
colour according to the specified colormap. This contour plot uses the sans_ dataset. The title and axis labels are
defined in the data header. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

    # title : Neutron scatter plot
    # x_label : $Q_x (Å^{-1})$
    # y_label : $Q_y (Å^{-1})$

To create a filled contour plot from the command line, the ``kind`` parameter must be set to ``contourf``.

.. code-block:: bash

   grplot sans.dat kind:contourf

|contourf|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`levels <link-levels>`, :ref:`major_h <link-majorh>`, :ref:`only_square_aspect_ratio <link-squareaspectratio>`,
:ref:`title <link-title>`, :ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

heatmap
```````

A heatmap uses the current colour map to display data. Each data point is represented by a coloured square whose size
depends on the amount of data. This heatmap plot uses the sans_ dataset. The title and axis labels are defined in the
data header. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

    # title : Neutron scatter plot
    # x_label : $Q_x (Å^{-1})$
    # y_label : $Q_y (Å^{-1})$

To create a heatmap plot from the command line, the ``kind`` parameter must be set to ``heatmap``. Both axes use a
logarithmic scale.

.. code-block:: bash

   grplot sans.dat kind:heatmap x_log:1 y_log:1

|heatmap1|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`only_square_aspect_ratio <link-squareaspectratio>`, :ref:`resample_method <link-resamplemethod>`,
:ref:`title <link-title>`, :ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

hexbin
``````

A hexbin uses hexagonal binning and the current colour map to display the data. Such a plot can be easily created from
the command line using the following command:

.. code-block:: bash

   grplot hexbin.dat kind:hexin

This example uses the hexbin_ data file. It contains additional key-value pairs in the data header.
More information's about the format of these files can be found under data_file_.

.. code-block:: bash

    # title : Test
    # x_label : x
    # y_label : y

|hexbin|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`num_bins <link-numbins>`, :ref:`only_square_aspect_ratio <link-squareaspectratio>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_range <link-xrange>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_range <link-yrange>`

histogram
`````````

A histogram provides an approximate representation of the distribution of numerical data. It should have two columns
containing the x- and y-data. To create a histogram from the command line, use ``kind`` ``histogram``. The ``num_bins``
parameter defines how many bins are displayed. The data file histogram_ is used. More information's about the format of
these files can be found under data_file_.


.. code-block:: bash

   grplot histogram.dat kind:histogram num_bins:20

In the right plot, these parameters are extended to include a vertical orientation with ``orientation:vertical``, as
well as ranges for the x- and y-data.

.. code-block:: bash

    # x_range : 2,3
    # y_range : 5, 8

|histogram1| |histogram2|

Following parameters can be used:

:ref:`bar_color <link-barcolor>`, :ref:`bottom <link-bottom>`, :ref:`columns <link-columns>`,
:ref:`edge_color <link-edgecolor>`, :ref:`error <link-error>`, :ref:`error_bar_style <link-errorbarstyle>`,
:ref:`error_columns <link-errorcolumns>`, :ref:`error_type <link-errortype>`,
:ref:`equal_up_and_down_error <link-equalerror>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`, :ref:`left <link-left>`,
:ref:`num_bins <link-numbins>`, :ref:`orientation <link-orientation>`,
:ref:`right <link-right>`, :ref:`title <link-title>`, :ref:`top <link-top>`, :ref:`twin_x <link-twinx>`,
:ref:`twin_y <link-twiny>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xye_file <link-xyefile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`

imshow
``````

An imshow plot displays data as a coloured image, with each data point represented by a coloured rectangle within the
image. To create an imshow plot from the command line, ``kind`` must be set to ``imshow``. The data file in this example
is sans_. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot sans.dat kind:imshow

|imshow|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`,
:ref:`kind <link-kind>`, :ref:`only_square_aspect_ratio <link-squareaspectratio>`, :ref:`title <link-title>`,
:ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`z_lim <link-zlim>`

isosurface
``````````

An isosurface is a three-dimensional analogue of a contour- or isoline. To create an isosurface from the command line,
the ``kind`` parameter must be set to ``isosurface``. In this example, the data file is called volume_. More
information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot volume.dat kind:isosurface

|isosurface|

Following parameters can be used:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`isovalue <link-isovalue>`, :ref:`join_plots <link-joinplots>`,
:ref:`kind <link-kind>`, :ref:`rotation <link-rotation>`, :ref:`tilt <link-tilt>`, :ref:`title <link-title>`,
:ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`,
:ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`,
:ref:`z_grid <link-zgrid>`, :ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

line
````

A line plot is a simple graph in which data points are joined together by a line. To create a line plot from the command
line, the ``kind`` parameter must be set to ``line``. As a data file covid19_ is used. More information's about the
format of these files can be found under data_file_.

.. code-block:: bash

   grplot covid19.csv kind:line

The following example includes parameters defined in the data header, such as the title and axis labels. The parameter
``location`` defines where the legend is placed, while ``x_lim`` sets the minimum and maximum limits of the x-axis.

.. code-block:: bash

    # title : Confirmed SARS–CoV–2 infections
    # x_label : Day
    # y_label : Confirmed
    # x_lim : 0.0, 917 + 1.0
    # y_log : 1
    # location : 4

The right-hand plot uses command-line arguments and the target_mtl_ data file.

.. code-block:: bash

   grplot target_mtl.1D kind:line y_log:1

|line1| |line2|

A line plot can be combined with a scatter plot to mark data points. The ``line_spec`` parameter can be used for this.
In this case, the data file is stem_. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot stem.dat kind:line line_spec:+-

|line3|

Another common use of a line plot is to display time data. For these GRPlot applies some defaults such as
``keep_aspect_ratio:0``, ``line_spec:+-`` and sets every time columns as ``x_columns`` while the rest are set as
``y_columns``. In this special case, parameters such as ``x_range`` and ``x_lim`` also require time-based entries.
Furthermore, it is not possible to include non-time-based x-values within the data. The following example uses the
blood_pressure_ file.

.. code-block:: bash

   grplot blood_pressure.csv

|line4|

Following parameters can be used:

:ref:`bottom <link-bottom>`, :ref:`columns <link-columns>`, :ref:`error <link-error>`,
:ref:`error_bar_style <link-errorbarstyle>`, :ref:`error_columns <link-errorcolumns>`,
:ref:`error_type <link-errortype>`, :ref:`equal_up_and_down_error <link-equalerror>`, :ref:`file <link-file>`,
:ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`int_limits_high <link-intlimitshigh>`, :ref:`int_limits_low <link-intlimitslow>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`left <link-left>`, :ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`,
:ref:`line_spec <link-linespec>`, :ref:`location <link-location>`, :ref:`marker_size <link-markersize>`,
:ref:`marker_type <link-markertype>`, :ref:`orientation <link-orientation>`, :ref:`right <link-right>`,
:ref:`title <link-title>`, :ref:`top <link-top>`, :ref:`twin_x <link-twinx>`, :ref:`twin_y <link-twiny>`,
:ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`,
:ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xye_file <link-xyefile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`

line3
`````

A line3 plot is a simple three-dimensional graph in which data points are joined together by a line. To create a
three-dimensional line plot from the command line, the ``kind`` parameter must be set to ``line3``. For this example,
the data file is called plot3_. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot plot3.dat kind:line3

|line3d_1|

Following parameters can be used:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`hkind <link-hkind>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`,
:ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`, :ref:`location <link-location>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`,
:ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`,
:ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`,
:ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`, :ref:`z_label <link-zlabel>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

marginal_heatmap
````````````````

A marginal heatmap combines a heatmap with either stair plots or histograms. These additional plots display some of the
heatmap data in the vertical and horizontal directions at the margins of the heatmap. To create a marginal heatmap from
the command line, use ``kind`` ``marginal_heatmap``. A marginal heatmap is a special type of heatmap where the sum or
maximum of each line and column is displayed on the side. The data file is sans_. More information's about the format of
these files can be found under data_file_.

.. code-block:: bash

   grplot sans.dat kind:marginal_heatmap

When ``h_kind`` is set to ``line``(right), the values of the row and column at the position of the mouse pointer are
displayed. ``use_bins`` specifies that the first row and column in the data file are interpreted as x- and y-ranges. The
data file for this example is sample_y_divy_.

.. code-block:: bash

   grplot sample_y_divy.dat kind:marginal_heatmap use_bins:1 h_kind:line

|marginal_heatmap1| |marginal_heatmap2|

Following parameters can be used:

:ref:`algorithm <link-algorithm>`, :ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`,
:ref:`grplot <link-grplot>`, :ref:`hkind <link-hkind>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`only_square_aspect_ratio <link-squareaspectratio>`, :ref:`resample_method <link-resamplemethod>`,
:ref:`title <link-title>`, :ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

pie
```

A pie chart is a circular statistical plot that displays one series of data. The total area of the chart represents the
total percentage of the given data. The size of each slice represents the percentage of the data it comprises. To create
a pie chart from the command line, the ``kind`` parameter must be set to ``pie``. The data file is called pie_. More
information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot pie.dat kind:pie

|pie1|

Following parameters can be used:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`kind <link-kind>`, :ref:`legend <link-legend>`,
:ref:`legend_line <link-legendline>`, :ref:`title <link-title>`

polar_heatmap
`````````````

A polar heatmap uses polar coordinates rather than Cartesian coordinates. To create a polar heatmap plot from the
command line, the ``kind`` parameter must be set to ``polar_heatmap``. This example uses the polarheatmap_ data file.
More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot polarheatmap.dat kind:polar_heatmap

With an additional ``theta_lim:70,320`` only a part of the polar heatmap will be displayed.

|polar_heatmap1| |polar_heatmap2|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`, :ref:`r_flip <link-rflip>`, :ref:`r_lim <link-rlim>`,
:ref:`r_log <link-rlog>`, :ref:`theta_flip <link-thetaflip>`, :ref:`theta_data_lim <link-thetadatalim>`,
:ref:`theta_lim <link-thetalim>`, :ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_label <link-xlabel>`, :ref:`y_columns <link-ycolumns>`, :ref:`y_label <link-ylabel>`

polar_histogram
```````````````

A polar histogram is a histogram that uses polar coordinates. To create a polar histogram plot from the command line,
set the ``kind`` parameter to ``polar_histogram``. The corresponding data file is polar_histogram_. More information's
about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot polar_histogram.dat kind:polar_histogram

|polar_histogram1|

Additional parameters offer more possibilities such as

.. code-block:: bash

    r_lim:2,8 keep_radii_axes:1

or

.. code-block:: bash

    stairs:1

|polar_histogram2| |polar_histogram3|

Following parameters can be used:

:ref:`bin_counts <link-bincounts>`, :ref:`bin_edges <link-binedges>`, :ref:`bin_width <link-binwidth>`,
:ref:`columns <link-columns>`, :ref:`draw_edges <link-drawedges>`, :ref:`edge_color <link-edgecolor>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_radii_axes <link-keepradiiaxes>`, :ref:`kind <link-kind>`,
:ref:`num_bins <link-numbins>`, :ref:`normalization <link-norm>`, :ref:`r_flip <link-rflip>`, :ref:`r_lim <link-rlim>`,
:ref:`r_log <link-rlog>`, :ref:`stairs <link-stairs>`, :ref:`theta_flip <link-thetaflip>`,
:ref:`theta_data_lim <link-thetadatalim>`, :ref:`theta_lim <link-thetalim>`, :ref:`title <link-title>`,
:ref:`x_columns <link-xcolumns>`, :ref:`x_label <link-xlabel>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_label <link-ylabel>`

polar_line
``````````

A polar plot displays a polyline in polar coordinates. The angle in radians is indicated by theta(x), and the radius
value for each point is indicated by r(y). To create a polar line plot from the command line, the ``kind`` parameter
must be set to ``polar_line``. This example uses the polar_ data file. More information's about the format of these
files can be found under data_file_.

.. code-block:: bash

   grplot polar.dat kind:polar_line

|polar_line|

Following parameters can be used:

:ref:`clip_negative <link-clipnegative>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`,
:ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`kind <link-kind>`, :ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`,
:ref:`line_spec <link-linespec>`, :ref:`location <link-location>`, :ref:`marker_size <link-markersize>`,
:ref:`marker_type <link-markertype>`, :ref:`r_flip <link-rflip>`, :ref:`r_lim <link-rlim>`, :ref:`r_log <link-rlog>`,
:ref:`theta_flip <link-thetaflip>`, :ref:`theta_data_lim <link-thetadatalim>`, :ref:`theta_lim <link-thetalim>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_label <link-xlabel>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_label <link-ylabel>`

polar_scatter
`````````````

In a polar scatter plot, each data point is displayed as a point within a polar coordinate system. Theta(x) indicates
the angle in radians and r(y) indicates the radius for each point. To create a polar scatter plot from the command line,
the ``kind`` parameter must be set to ``polar_scatter``. In this example, the polar_thetatheta_ data file is used. More
information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot polar_thetatheta.dat kind:polar_scatter

|polar_scatter|

Following parameters can be used:

:ref:`clip_negative <link-clipnegative>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`,
:ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`kind <link-kind>`, :ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`,
:ref:`line_spec <link-linespec>`, :ref:`location <link-location>`, :ref:`marker_size <link-markersize>`,
:ref:`marker_type <link-markertype>`, :ref:`r_flip <link-rflip>`, :ref:`r_lim <link-rlim>`, :ref:`r_log <link-rlog>`,
:ref:`theta_flip <link-thetaflip>`, :ref:`theta_data_lim <link-thetadatalim>`, :ref:`theta_lim <link-thetalim>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_label <link-xlabel>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_label <link-ylabel>`

scatter
```````

In a scatter plot, each data point is displayed as an individual point within a two-dimensional coordinate system. A
scatter plot can be created from the command line using the ``scatter`` option. The marker type can also be changed, as
shown in the picture on the left, where it is set to square. The ``c`` parameter in the data file defines the color
values applied to each marker. The data file is called scatter_. More information's about the format of these files can
be found under data_file_.

.. code-block:: bash

   grplot scatter.dat kind:scatter marker_type:-7

If there are multiple series, each scatter plot gets its own marker. The ``columns`` parameter defines which columns of
the target_mtl_ data file should be used.

.. code-block:: bash

   grplot target_mtl.1D kind:scatter y_log:1 columns:1,2,3

|scatter1| |scatter2|

Following parameters can be used:

:ref:`bottom <link-bottom>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`, :ref:`left <link-left>`,
:ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`, :ref:`line_spec <link-linespec>`,
:ref:`location <link-location>`, :ref:`marker_size <link-markersize>`, :ref:`marker_type <link-markertype>`,
:ref:`orientation <link-orientation>`, :ref:`right <link-right>`, :ref:`title <link-title>`, :ref:`top <link-top>`,
:ref:`twin_x <link-twinx>`, :ref:`twin_y <link-twiny>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`,
:ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`,
:ref:`x_range <link-xrange>`, :ref:`xye_file <link-xyefile>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`

scatter3
````````

A three-dimensional scatter plot shows each data point as an individual point within a three-dimensional coordinate
system. To create a 3d scatter plot from the command line, set the kind parameter to ``scatter3``. This example uses the
plot3_ data file. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot plot3.dat kind:scatter3

A colored 3d scatter plot can be created by defining additional color values (``c``) in the data file.

|scatter3d_1| |scatter3d_2|

Following parameters can be used:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`,
:ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`, :ref:`location <link-location>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`,
:ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`,
:ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`,
:ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`, :ref:`z_label <link-zlabel>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

shade
`````

A shade plot can be used to create a heatmap from point- or line-based data. To create a shade plot using GRPlot, set
the plot type to ``shade``. The data file hexbin_ is used for these examples. More information's about the format of
these files can be found under data_file_.

.. code-block:: bash

   grplot hexbin.dat kind:shade

The additional x- and y-bins parameters define the number of bins in each direction, while a cubic transformation is
also used for the right-hand image. Combining these additional parameters helps to produce a more meaningful result.

.. code-block:: bash

   grplot hexbin.dat kind:shade x_bins:50 y_bins:50 transformation:4

|shade1| |shade2|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`only_square_aspect_ratio <link-squareaspectratio>`, :ref:`transformation <link-transformation>`,
:ref:`x_bins <link-xbins>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`,
:ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`y_bins <link-ybins>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`,
:ref:`z_range <link-zrange>`

stairs
``````

A stair plot is a piecewise constant function with a finite number of pieces. To create a stair plot from the command
line, use the ``stairs`` option. The data file is set to stem_. More information's about the format of these files can
be found under data_file_.

.. code-block:: bash

   grplot stem.dat kind:stairs

|stairs|

Following parameters can be used:

:ref:`bottom <link-bottom>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`left <link-left>`, :ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`,
:ref:`line_spec <link-linespec>`, :ref:`location <link-location>`, :ref:`marker_type <link-markertype>`,
:ref:`orientation <link-orientation>`, :ref:`right <link-right>`, :ref:`step_where <link-stepwhere>`,
:ref:`title <link-title>`, :ref:`top <link-top>`, :ref:`twin_x <link-twinx>`, :ref:`twin_y <link-twiny>`,
:ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`,
:ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`

stem
````

In a stem plot, lines are drawn perpendicular to the baseline at each point between the baseline and the data values. To
create a stem plot from the command line, use ``kind`` ``stem``. The x- and y-columns define which columns of the data
are to be interpreted as x and y respectively. This example uses the stem_ data file. More information's about the
format of these files can be found under data_file_.

.. code-block:: bash

   grplot stem.dat kind:stem x_columns:1,4,6 y_columns:2,5,7

|stem1| |stem2|

Following parameters can be used:

:ref:`bottom <link-bottom>`, :ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`left <link-left>`, :ref:`legend <link-legend>`, :ref:`legend_line <link-legendline>`,
:ref:`location <link-location>`, :ref:`marker_type <link-markertype>`, :ref:`orientation <link-orientation>`,
:ref:`right <link-right>`, :ref:`title <link-title>`, :ref:`top <link-top>`, :ref:`twin_x <link-twinx>`,
:ref:`twin_y <link-twiny>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`

surface
```````

A surface plot can be compared with a visualisation of a two-variable function in three-dimensional space. To create a
surface plot from the command line, the ``kind`` parameter must be set to ``surface``. This example uses the sans_ data
file. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot sans.dat kind:surface

|surface1|

Following parameters can be used:

:ref:`accelerate <link-accelerate>`, :ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`,
:ref:`consecutive_colorbars <link-colorbars>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`,
:ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`,
:ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`,
:ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`, :ref:`z_label <link-zlabel>`,
:ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

tricontour
``````````

A tricontour plot shows contour lines on an unstructured triangular grid. To create a tricontour plot from the command
line, set the ``kind`` parameter to ``tricontour``. In this case, the data file is also named tricontour_. More
information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot tricontour.dat kind:tricontour

|tricontour|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`,
:ref:`levels <link-levels>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`,
:ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`,
:ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`,
:ref:`y_range <link-yrange>`, :ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

trisurface
``````````

A trisurface is a type of surface plot created by triangulating compact surfaces consisting of a finite number of
triangles that cover the entire surface, ensuring that each point on the surface lies within a triangle. To create a
trisurface plot from the command line, the ``kind`` parameter must be set to ``trisurface``. This example uses the
tricontour_ data file again. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot tricontour.dat kind:trisurface

|trisurface|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`ignore_blank_lines <link-ignoreblanklines>`,
:ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`, :ref:`x_columns <link-xcolumns>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`,
:ref:`z_label <link-zlabel>`, :ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

quiver
``````

A quiver plot is a type of two-dimensional plot that displays vectors as arrows. To create a quiver plot from the
command line, the ``kind`` parameter must be set to ``quiver``. In this example, the quiver_ data file is used. More
information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot quiver.dat kind:quiver

|quiver|

Following parameters can be used:

:ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`, :ref:`consecutive_colorbars <link-colorbars>`,
:ref:`file <link-file>`, :ref:`grplot <link-grplot>`, :ref:`hkind <link-hkind>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`,
:ref:`keep_aspect_ratio <link-keepaspectratio>`, :ref:`kind <link-kind>`, :ref:`title <link-title>`,
:ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`,
:ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`,
:ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`,
:ref:`z_lim <link-zlim>`

volume
``````

A volume plot uses volume rendering to draw a three-dimensional data set. The volume data is first reduced to a
two-dimensional image using either an emission or an absorption model, or via a maximum intensity projection. The
current colormap is then applied to the result. To create a volume plot from the command line, the ``kind`` parameter
must be set to ``volume``. The algorithm determines how the rays are calculated. This example uses the volume_ data
file. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

   grplot volume.dat kind:volume algorithm:emission

|volume1| |volume2| |volume3|

Following parameters can be used:

:ref:`algorithm <link-algorithm>`, :ref:`cmap <link-cmap>`, :ref:`columns <link-columns>`,
:ref:`consecutive_colorbars <link-colorbars>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`,
:ref:`title <link-title>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`, :ref:`x_grid <link-xgrid>`,
:ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`, :ref:`x_range <link-xrange>`,
:ref:`y_columns <link-ycolumns>`, :ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`,
:ref:`y_lim <link-ylim>`, :ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`,
:ref:`z_label <link-zlabel>`, :ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

wireframe
`````````

In a wireframe plot, a grid of values is projected onto a specified three-dimensional surface. This surface has a grid
structure itself. To create a wireframe plot from the command line, the ``kind`` parameter must be set to ``wireframe``.
The ``use_bins`` parameter then defines the x- and y-ranges as being defined in the first row and column. The
sample_y_divy_ data file is used here. More information's about the format of these files can be found under data_file_.

.. code-block:: bash

    grplot sample_y_divy.dat kind:wireframe use_bins:1

|wireframe|

Following parameters can be used:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`grplot <link-grplot>`,
:ref:`ignore_blank_lines <link-ignoreblanklines>`, :ref:`join_plots <link-joinplots>`, :ref:`kind <link-kind>`,
:ref:`use_bins <link-usebins>`, :ref:`x_columns <link-xcolumns>`, :ref:`x_flip <link-xflip>`,
:ref:`x_grid <link-xgrid>`, :ref:`x_label <link-xlabel>`, :ref:`x_lim <link-xlim>`, :ref:`x_log <link-xlog>`,
:ref:`x_range <link-xrange>`, :ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`,
:ref:`y_flip <link-yflip>`, :ref:`y_grid <link-ygrid>`, :ref:`y_label <link-ylabel>`, :ref:`y_lim <link-ylim>`,
:ref:`y_log <link-ylog>`, :ref:`y_range <link-yrange>`, :ref:`z_grid <link-zgrid>`, :ref:`z_label <link-zlabel>`,
:ref:`z_lim <link-zlim>`, :ref:`z_log <link-zlog>`, :ref:`z_range <link-zrange>`

Multiple axes
-------------

To create a plot with additional axes, the ``bottom``, ``top``, ``left``, ``right``, ``twin_x`` and ``twin_y``
parameters must be used. The number behind each of these parameters defines which series is displayed on that axis. This
example uses the multi_axes_ data file.

.. code-block:: bash

    multi_axes.dat x_columns:1,4,6 y_columns:2,5,7 twin_x:0 twin_y:1 kind:line

|multi_axes2|

Another example that uses twin axes is:

.. code-block:: bash

    multi_axes.dat x_columns:1,4,6 y_columns:2,5,7 right:0 left:1 bottom:0 top:1 kind:line

|multi_axes1|

Following parameters can be useful for it:

:ref:`bottom <link-bottom>`, :ref:`left <link-left>`, :ref:`right <link-right>`, :ref:`top <link-top>`,
:ref:`twin_x <link-twinx>`, :ref:`twin_y <link-twiny>`

Error bars
----------

There are multiple ways to display error data. For example, you can use ``xye_file``, ``equal_up_and_down_error``,
``error`` or name the error columns. You can also change the color of the error bars with the example file line_error_.

.. code-block:: bash

    grplot line_error.dat kind:line error:{error_bar_color:3} x_columns:1,5 y_columns:2,6 error_columns:3,4,7,8

|line_error1|

The style of the error bars can be changed too.

.. code-block:: bash

    grplot line_error.dat kind:line  x_columns:1,5 y_columns:2,6 error_columns:3,7 error_bar_style:1 equal_up_and_down_error:1

|line_error2|

In the case of a bar plot, the key value pair ``error bar style:1`` is represented differently, while the ``y_lim``
parameter defines the limits of the y-axis. The data file is called barplot_error_.

.. code-block:: bash

    grplot barplot_error.dat kind:barplot bar_width:1 error_bar_style:1 x_columns:1,3 y_columns:2,4 error_columns:5,6,7,8 error:{} y_lim:0,12

|barplot_error|

Following parameters can be useful for it:

:ref:`error <link-error>`, :ref:`error_bar_style <link-errorbarstyle>`, :ref:`error_columns <link-errorcolumns>`,
:ref:`error_type <link-errortype>`, :ref:`equal_up_and_down_error <link-equalerror>`, :ref:`xye_file <link-xyefile>`

Integral
--------

An integral can be created for line plots using the ``int_limits_high`` and ``int_limits_low parameters``. In the
following example, the data columns are restricted and the y-axis is displayed in a logarithmic scale. The data file is
lambda_.

.. code-block:: bash

    grplot lambda.dat kind:line int_limits_high:2,2.4,2.5 int_limits_low:2,2.335,2.45 columns:2,3 y_log:1

|integral|

Following parameters can be useful for it:

:ref:`int_limits_high <link-intlimitshigh>`, :ref:`int_limits_low <link-intlimitslow>`

Multiplot
---------

To create multiple plots, it is necessary to use the ``--plot`` key in front of the file and key-value pairs.

.. code-block:: bash

    grplot \
      --plot ./lib/grm/grplot/data/sans.dat kind:heatmap \
      --plot ./lib/grm/grplot/data/polar.dat kind:polar_line \
      --plot ./lib/grm/grplot/data/pie.dat kind:pie \
      --plot ./lib/grm/grplot/data/sans.dat kind:wireframe \
      --plot ./lib/grm/grplot/data/barplot.dat kind:barplot style:stacked \
      --plot ./lib/grm/grplot/data/quiver.dat kind:quiver

|multiplot1|

.. code-block:: bash

    grplot \
      --plot ./lib/grm/grplot/data/sans.dat kind:contour levels:40 \
      --plot ./lib/grm/grplot/data/polar_histogram.dat kind:polar_histogram \
      --plot ./lib/grm/grplot/data/source_time.dat kind:line y_log:1 \
      --plot ./lib/grm/grplot/data/volume.dat kind:volume

|multiplot2|

The editor must be used to apply larger changes, such as adding multiple columns or rows to a single plot.

Mixed plots
-----------

Similar to the multi plots, a mixed plot of different series can be created. To do this, the ``--plot`` key must be used
again, with each plot defining its series. The next step is to use the ``join_plots`` parameter to merge the defined
plots and create a plot with mixed series. Since the ``line_spec`` parameter only works on 2d plots, we can create a
scatter and line plot combination this way that looks like a ``line_spec`` result.`

.. code-block:: bash

    grplot \
      --plot ./lib/grm/grplot/data/plot3.dat kind:scatter3 \
      --plot ./lib/grm/grplot/data/plot3.dat kind:line3 join_plots:1,2

|mixed_series1|

Another example, which uses a combination of a scatter and a contour plot, can be created with this command line inside
GRPlot. This example is also used in other places in this documentation. This one uses the mixed_series_ and
mixed_series_contour_ dataset.

.. code-block:: bash

    grplot \
      --plot ./lib/grm/grplot/data/mixed_series_contour.dat kind:contourf x_range:-2,2 y_range:-2,2 colormap:48 \
      --plot ./lib/grm/grplot/data/mixed_series.dat kind:scatter x_columns:1 y_columns:2 columns:1,2  join_plots:1,2

|mixed_series2|

Following parameters can be useful for it:

:ref:`join_plots <link-joinplots>`

Colorbar
--------

There are three main ways to modify the colorbar inside GRPlot. One option is to change the colormap, while another is
to adjust the location of the colorbar, which can be quickly changed between four locations.

|colorbar_left| |colorbar_bottom| |colorbar_top|

The third option is to adjust the limits that the colour bar displays. In a multiplot, all colorbars can easily be
modified to have the same limits. To do this, the ``consecutive_colorbars`` parameter can be used.

|consecutive_colorbars1| |consecutive_colorbars2|

This last example was created using a trick that alters the z-value ranges, giving the ``consecutive_colorbars``
parameter more visual impact.

.. code-block:: bash

    grplot \
      --plot ./lib/grm/grplot/data/sample_y_divy.dat kind:heatmap use_bins:1 z_range:-20000,80000 \
      --plot ./lib/grm/grplot/data/sample.dat kind:heatmap use_bins:1 y_lim:-0.25,0.25

Following parameters can be useful for it:

:ref:`cmap <link-cmap>`, :ref:`consecutive_colorbars <link-colorbars>`, :ref:`z_lim <link-zlim>`,
:ref:`z_log <link-zlog>`

.. |barplot1| image:: images/kinds/barplot1.png
              :width: 49%
.. |barplot2| image:: images/kinds/barplot2.png
              :width: 49%
.. |barplot3| image:: images/kinds/barplot3.png
.. |hexbin| image:: images/kinds/hexbin.png
.. |contour1| image:: images/kinds/contour1.png
.. |contour2| image:: images/kinds/contour2.png
.. |contourf| image:: images/kinds/contourf.png
.. |heatmap1| image:: images/kinds/heatmap1.png
.. |histogram1| image:: images/kinds/histogram1.png
                :width: 49%
.. |histogram2| image:: images/kinds/histogram2.png
                :width: 49%
.. |imshow| image:: images/kinds/imshow.png
.. |isosurface| image:: images/kinds/isosurface.png
.. |line1| image:: images/kinds/line_1.png
             :width: 49%
.. |line2| image:: images/kinds/line_2.png
             :width: 49%
.. |line3| image:: images/kinds/line_3.png
.. |line4| image:: images/kinds/line_4.png
.. |line3d_1| image:: images/kinds/line3d_1.png
.. |marginal_heatmap1| image:: images/kinds/marginal_heatmap1.png
                       :width: 49%
.. |marginal_heatmap2| image:: images/kinds/marginal_heatmap2.png
                       :width: 49%
.. |pie1| image:: images/kinds/pie1.png
.. |polar_heatmap1| image:: images/kinds/polar_heatmap1.png
                    :width: 49%
.. |polar_heatmap2| image:: images/kinds/polar_heatmap2.png
                    :width: 49%
.. |polar_histogram1| image:: images/kinds/polar_histogram1.png
.. |polar_histogram2| image:: images/kinds/polar_histogram2.png
                      :width: 49%
.. |polar_histogram3| image:: images/kinds/polar_histogram3.png
                      :width: 49%
.. |polar_line| image:: images/kinds/polar_line1.png
.. |polar_scatter| image:: images/kinds/polar_scatter1.png
.. |scatter1| image:: images/kinds/scatter1.png
                   :width: 49%
.. |scatter2| image:: images/kinds/scatter2.png
                   :width: 49%
.. |scatter3d_1| image:: images/kinds/scatter3d_1.png
                   :width: 49%
.. |scatter3d_2| image:: images/kinds/scatter3d_2.png
                   :width: 49%
.. |shade1| image:: images/kinds/shade1.png
                   :width: 49%
.. |shade2| image:: images/kinds/shade2.png
                   :width: 49%
.. |stairs| image:: images/kinds/stairs.png
.. |stem1| image:: images/kinds/stem1.png
                   :width: 49%
.. |stem2| image:: images/kinds/stem2.png
                   :width: 49%
.. |surface1| image:: images/kinds/surface1.png
.. |tricontour| image:: images/kinds/tricontour.png
.. |trisurface| image:: images/kinds/trisurface.png
.. |quiver| image:: images/kinds/quiver.png
.. |volume1| image:: images/kinds/volume1.png
             :width: 32%
.. |volume2| image:: images/kinds/volume2.png
             :width: 32%
.. |volume3| image:: images/kinds/volume3.png
             :width: 32%
.. |wireframe| image:: images/kinds/wireframe.png

.. |integral| image:: images/integral.png
.. |line_error1| image:: images/line_error1.png
.. |line_error2| image:: images/line_error2.png
.. |barplot_error| image:: images/barplot_error.png
.. |multiplot1| image:: images/multiplot1.png
.. |multiplot2| image:: images/multiplot2.png
.. |multi_axes1| image:: images/multi_axes1.png
.. |multi_axes2| image:: images/multi_axes2.png
.. |mixed_series1| image:: images/mixed_series1.png
.. |mixed_series2| image:: images/mixed_series2.png

.. |colorbar_left| image:: images/colorbar/colorbar_left.png
                   :width: 32%
.. |colorbar_bottom| image:: images/colorbar/colorbar_bottom.png
                     :width: 32%
.. |colorbar_top| image:: images/colorbar/colorbar_top.png
                  :width: 32%
.. |consecutive_colorbars1| image:: images/colorbar/consecutive_colorbars1.png
                            :width: 49%
.. |consecutive_colorbars2| image:: images/colorbar/consecutive_colorbars2.png
                            :width: 49%

.. _barplot: https://gr-framework.org/downloads/grplot/example_data/barplot.dat
.. _barplot_error: https://gr-framework.org/downloads/grplot/example_data/barplot_error.dat
.. _barplot2: https://gr-framework.org/downloads/grplot/example_data/barplot2.dat
.. _covid19: https://gr-framework.org/downloads/grplot/example_data/covid19.csv
.. _hexbin: https://gr-framework.org/downloads/grplot/example_data/hexbin.dat
.. _histogram: https://gr-framework.org/downloads/grplot/example_data/histogram.dat
.. _lambda: https://gr-framework.org/downloads/grplot/example_data/lambda.dat
.. _line_error: https://gr-framework.org/downloads/grplot/example_data/line_error.dat
.. _multi_axes: https://gr-framework.org/downloads/grplot/example_data/multi_axes.dat
.. _plot3: https://gr-framework.org/downloads/grplot/example_data/plot3.dat
.. _pie: https://gr-framework.org/downloads/grplot/example_data/pie.dat
.. _polar: https://gr-framework.org/downloads/grplot/example_data/polar.dat
.. _polar_histogram: https://gr-framework.org/downloads/grplot/example_data/polar_histogram.dat
.. _polar_thetatheta: https://gr-framework.org/downloads/grplot/example_data/polar_thetatheta.dat
.. _polarheatmap: https://gr-framework.org/downloads/grplot/example_data/polarheatmap.dat
.. _quiver: https://gr-framework.org/downloads/grplot/example_data/quiver.dat
.. _sample_y_divy: https://gr-framework.org/downloads/grplot/example_data/sample_y_divy.dat
.. _sans: https://gr-framework.org/downloads/grplot/example_data/sans.dat
.. _scatter: https://gr-framework.org/downloads/grplot/example_data/scatter.dat
.. _stem: https://gr-framework.org/downloads/grplot/example_data/stem.dat
.. _target_mtl: https://gr-framework.org/downloads/grplot/example_data/target_mtl.1D
.. _tricontour: https://gr-framework.org/downloads/grplot/example_data/tricontour.dat
.. _volume: https://gr-framework.org/downloads/grplot/example_data/volume.dat
.. _mixed_series: https://gr-framework.org/downloads/grplot/example_data/mixed_series.dat
.. _mixed_series_contour: https://gr-framework.org/downloads/grplot/example_data/mixed_series_contour.dat
.. _blood_pressure: https://gr-framework.org/downloads/grplot/example_data/blood_pressure.csv
.. _data_file: /grplot/data_files.html

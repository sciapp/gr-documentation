Key-Value Pairs
===============

The following table lists all the keys that can be used on the command line with GRPlot. They can also be put inside the
data file, preceded by a ``#``. Some of these keys can be used for every plot type, while the use of others depends on
whether the data sets are two or three dimensional. There are also keys that only work in combination with a specific
plot type.

All parameters are separated by a space. Some parameters are more complex than others. These parameters represent
containers inside GRM. Container parameters follow a different syntax to normal parameters. The parameters inside the
container are enclosed by ``{}``. If more than one parameter is given to the container, each key-value pair is enclosed
by ``{}`` and the parameters are separated by ``,``, with no whitespace characters.

+------------------------------+---------------------------------------------------------------------------------------+
| Key                          | Description                                                                           |
+==============================+=======================================================================================+
| .. _link-accelerate:         | This parameter determines whether the surface plot is calculated using the GR or GR3  |
| ``accelerate``               | functionalities. The value of this parameter must be 0 or 1, with GR3 being used by   |
|                              | default. Restricted to surface_.                                                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-algorithm:          |                                                                                       |
| ``algorithm``                | This parameter defines the model to be used for data reduction. If ``kind`` is set to |
|                              | ``volume``:                                                                           |
|                              |                                                                                       |
|                              | - ``emission`` (default)                                                              |
|                              | - ``absorption``                                                                      |
|                              | - ``mip`` (which is the same as ``maximum``)                                          |
|                              |                                                                                       |
|                              | If ``kind`` is set to ``marginal_heatmap``:                                           |
|                              |                                                                                       |
|                              | - ``max`` of the row/column                                                           |
|                              | - ``sum`` of the row/column (the default)                                             |
|                              |                                                                                       |
|                              | Restricted to volume_ and marginal_heatmap_.                                          |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-barcolor:           | This parameter defines the color of all the bars in the plot. This parameter can have |
| ``bar_color``                | one of two values: an integer representing a color index, or three doubles            |
|                              | representing the RGB value of the color. If this parameter is not set, the bars will  |
|                              | be dark blue (index 989). Restricted to barplot_ and histogram_.                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-barwidth:           | This parameter defines the width of all the bars within the plot. Depending on the    |
| ``bar_width``                | specified width, the bars may overlap. This parameter's value is a double number,     |
|                              | with a default value of 0.8. Restricted to barplot_.                                  |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-bincounts:          | This parameter determines the number of classes used for binning. Restricted to       |
| ``bin_counts``               | polar_histogram_.                                                                     |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-binedges:           | This parameter defines the boundaries of the bins. Restricted to polar_histogram_.    |
| ``bin_edges``                |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-binwidth:           | The width of all the bins is set by this parameter. Restricted to polar_histogram_.   |
| ``bin_width``                |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-bottom:             | This parameter defines an axis at the specified position. The values of this key      |
| ``bottom``                   | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-clipnegative:       | If this parameter is set, only positive radii will be displayed; otherwise, negative  |
| ``clip_negative``            | radii will be mirrored. Restricted to polar_line_ and polar_scatter_.                 |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-cmap:               | Same as ``colormap``.                                                                 |
| ``cmap``                     |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| ``colormap``                 | This parameter defines the colormap_ to be used. The default is 44 (Viridis).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-columns:            | Define which columns of the file should be included in the plot. The default is to    |
| ``columns``                  | include all columns. To draw all columns from A to B, use A:B. A is necessary even if |
|                              | you want to draw all the lines from B to the end. To select more than one specific    |
|                              | column, use a comma as the separator, with no whitespace.                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-colorbars:          | This allows the same colour bar to be forced onto all plots that share the same type  |
| ``consecutive_colorbars``    | of coordinate system. Therefore, the maximum and minimum values of all matching types |
|                              | are calculated and used as the color bar limits.                                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-drawedges:          | If a colormap is used, this parameter determines whether the outer shape is drawn.    |
| ``draw_edges``               | The value can be either 0 or 1. Restricted to polar_histogram_.                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-edgecolor:          | This parameter defines the color of all edges within the plot. It can have one of two |
| ``edge_color``               | values: an integer representing a color index, or three doubles representing the RGB  |
|                              | value of the color. If this parameter is not set, the edges will be colored with      |
|                              | index 1 (black). Restricted to barplot_ and histogram_.                               |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-edgewidth:          | This parameter defines the width of all edges within the plot. This parameter takes   |
| ``edge_width``               | the form of a floating-point number, with a default value of 1.0. Restricted to       |
|                              | barplot_.                                                                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-error:              | This parameter allows the relative error to be displayed. The values for this         |
| ``error``                    | parameter are key-value pairs with the following keys:                                |
|                              |                                                                                       |
|                              | - ``error_bar_color``: Defines the color of the error bars as an integer. If no color |
|                              |   is specified, an error is raised.                                                   |
|                              | - ``downwards_cap_color``: Defines the color of the downward cap of the error bars as |
|                              |   an integer.                                                                         |
|                              | - ``upwards_cap_color``: Defines the color of the upward cap of the error bars as an  |
|                              |   integer.                                                                            |
|                              |                                                                                       |
|                              | Note: if the error bars are to be displayed, the last two columns of the data are     |
|                              | used for the error. If the upward and downward errors are equal, use                  |
|                              | ``equal_up_and_down_error`` with a value of 1, in which case only one column of error |
|                              | data is expected instead of two. This parameter flag does not require the error       |
|                              | parameter to be set. As with the error parameter, some of the columns in the data     |
|                              | will be interpreted as error values. By default, the error data is interpreted as     |
|                              | relative, but this can be changed to absolute using the ``error_type`` parameter with |
|                              | the value absolute. The syntax of this parameter is:                                  |
|                              |                                                                                       |
|                              | ``error:{{error_bar_color:...},{...},{...}}``                                         |
|                              |                                                                                       |
|                              | Restricted to barplot_, histogram_ and line_.                                         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-errorbarstyle:      | This defines how error bars are displayed. They can be displayed as single error      |
| ``error_bar_style``          | lines (0) or as an error area (1). The appearance of the error area depends on the    |
|                              | ``kind``.                                                                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-errorcolumns:       | Define the columns of the file that will represent the error data. Depending on the   |
| ``error_columns``            | status of the flag parameter ``equal_up_and_down_error``, this parameter must include |
|                              | one or two columns for each y-column to which error bars should later be added. If    |
|                              | this parameter is used and includes enough columns, it is not necessary to set        |
|                              | ``error`` to enable the error bars. However, it can still be set to edit the          |
|                              | resulting error bars. By default, the error data is interpreted as relative, but this |
|                              | can be changed to absolute using the parameter ``error_type`` and the value           |
|                              | ``absolute``. Restricted to barplot_, histogram_ and line_.                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-errortype:          | This parameter determines whether error data is interpreted as ``relative`` or        |
| ``error_type``               | ``absolute``; the default setting is ``relative``.                                    |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-equalerror:         | This parameter defines whether the same values are used for up and down errors. If it |
| ``equal_up_and_down_error``  | is set to 1, only one error column is needed instead of two.                          |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-file:               | This contains the data that should be displayed. If no file is specified, an error    |
| ``file``                     | message is displayed. If this parameter is the first argument, the ``file`` keyword   |
|                              | can be omitted. Further information about these files can be found under data_file_.  |
|                              | In place of a file path, a hyphen (``-``) normally means 'read from standard input'.  |
|                              | Since GRPlot does not read from standard input by default, use ``-`` to redirect the  |
|                              | input like ``cat <data-file> | grplot -``. This allows GRPlot to be used in a pipe.   |
|                              | Another option is to use .xml or .xml.png files instead of a data file. These files   |
|                              | contain the internal representation of a specific plot, which can then be restored    |
|                              | when GRPlot starts up. If you use these files, all the given parameters are ignored.  |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-grplot:             | This parameter ensures consistency between the plot types: contour, contourf,         |
| ``grplot``                   | heatmap, imshow, marginal_heatmap, surface and wireframe. When set, the data is       |
|                              | displayed in the same order by all these types, whereas the imshow plot would         |
|                              | generally be flipped. The value can be either 0 or 1, and if not otherwise set, it is |
|                              | always 1.                                                                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-hkind:              | Same as :ref:`marginal_heatmap_kind <link-marginalhkind>`.                            |
| ``h_kind``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ignoreblanklines:   | If set to 1, ignore blank lines inside the data.                                      |
| ``ignore_blank_lines``       |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-intlimitshigh:      | This parameter defines the upper limits of all integrals. The syntax for this         |
| ``int_limits_high``          | parameter is: ``int_limits_high:num_of_elems,elem_1,elem_2,...``. Restricted to       |
|                              | line_.                                                                                |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-intlimitslow:       | This parameter defines the lower limits of all integrals. The syntax for this         |
| ``int_limits_low``           | parameter is: ``int_limits_low:num_of_elems,elem_1,elem_2,...``. Restricted to line_. |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-isovalue:           | Values greater than the isovalue will be considered outside the isosurface, and       |
| ``isovalue``                 | values less than the isovalue will be considered inside it. The value must be an      |
|                              | integer or a double, with 0.5 being the default. Restricted to isosurface_.           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-joinplots:          | This parameter can only be used on the command line to create a plot combining        |
| ``join_plots``               | multiple datasets or types (multi_series_). It is similar to the ``move_to_plot``     |
|                              | function. The numbers start with 1, and the values are separated by commas.           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-keepaspectratio:    | This defines whether or not the aspect ratio of the initial picture is kept. This     |
| ``keep_aspect_ratio``        | parameter can have a value of 0 or 1.                                                 |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-keepradiiaxes:      | This parameter only has an impact if ``y_lim`` is set. In this case, the ranges for   |
| ``keep_radii_axes``          | the radial axes are disregarded, but the polar_histogram_ is still affected by the    |
|                              | y-limit.                                                                              |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-kind:               | This parameter determines which plot type is displayed. The possible options are:     |
| ``kind``                     |                                                                                       |
|                              | - barplot_                                                                            |
|                              | - contour_                                                                            |
|                              | - contourf_                                                                           |
|                              | - heatmap_                                                                            |
|                              | - hexbin_                                                                             |
|                              | - histogram_                                                                          |
|                              | - imshow_                                                                             |
|                              | - isosurface_                                                                         |
|                              | - line_                                                                               |
|                              | - marginal_heatmap_                                                                   |
|                              | - polar_heatmap_                                                                      |
|                              | - polar_histogram_                                                                    |
|                              | - polar_line_                                                                         |
|                              | - polar_scatter_                                                                      |
|                              | - pie_                                                                                |
|                              | - line3_                                                                              |
|                              | - scale_                                                                              |
|                              | - scatter_                                                                            |
|                              | - scatter3_                                                                           |
|                              | - shade_                                                                              |
|                              | - surface_                                                                            |
|                              | - stairs_                                                                             |
|                              | - stem_                                                                               |
|                              | - tricontour_                                                                         |
|                              | - trisurface_                                                                         |
|                              | - quiver_                                                                             |
|                              | - volume_                                                                             |
|                              | - wireframe_                                                                          |
|                              |                                                                                       |
|                              | The default plot kind is ``line``. For the kinds ``polar_line`` and                   |
|                              | ``polar_scatter``, ``line`` and ``scatter``, and ``barplot``, ``stem``, and           |
|                              | ``stairs``, multiple types can be specified to create a plot with mixed series. To do |
|                              | this, each kind must be separated by a comma and each series must have a specified    |
|                              | kind if the last one should not be used for the missing kinds.                        |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-left:               | This parameter defines an axis at the specified position. The values of this key      |
| ``left``                     | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-legend:             | This parameter is primarily intended for the data header and is used to define the    |
| ``legend``                   | labels for the data columns. It can be used in the following way:                     |
|                              | ``#legend:<val>,<val>,<val>``. Each entry is separated by a comma, meaning that no    |
|                              | value after or between two commas will skip the label for that specific column.       |
|                              | Regardless of their position, spaces will not be ignored.                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-legendline:         | When this parameter is set to 1, the first line above the data will be interpreted as |
| ``legend_line``              | legend entries. If this parameter is not set, grplot will only interpret non-number   |
|                              | values as legend entries.                                                             |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-levels:             | This parameter determines the number of contour lines to be drawn. The default        |
| ``levels``                   | setting is 20. Restricted to contour_, contourf_ and tricontour_.                     |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-linespec:           | This parameter specifies the string for colour, line type and marker type. Therefore, |
| ``line_spec``                | the symbols in the string are interpreted. This only works for 2D plots.              |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-location:           | Defines the location of the legend. Possible options are:                             |
| ``location``                 |                                                                                       |
|                              | -  ``1``: top right                                                                   |
|                              | -  ``2``: top left                                                                    |
|                              | -  ``3``: bottom left                                                                 |
|                              | -  ``4``: bottom right                                                                |
|                              | -  ``5``: mid right                                                                   |
|                              | -  ``6``: mid left                                                                    |
|                              | -  ``7``: mid right                                                                   |
|                              | -  ``8``: mid bottom                                                                  |
|                              | -  ``9``: mid top                                                                     |
|                              | - ``10``: central                                                                     |
|                              | - ``11``: outside window top right                                                    |
|                              | - ``12``: outside window mid right                                                    |
|                              | - ``13``: outside window bottom right                                                 |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-majorh:             | This parameter determines whether contour labels should be drawn. Any number greater  |
| ``major_h``                  | than 0 specifies which lines will be labelled. Setting an offset of 1000 to this      |
|                              | parameter will also color the lines. Restricted to contour_ and contourf_.            |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-marginalhkind:      | This parameter determines which part of the data is displayed in the side plots. The  |
| ``marginal_heatmap_kind``    | possible options are ``all`` and ``line``. When the kind is set to ``all``, the side  |
|                              | plots display the full heatmap data. This is the default setting. If the value is set |
|                              | to ``line``, the side plots only respect a specific row or column of the data.        |
|                              | Restricted to marginal_heatmap_.                                                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-markersize:         | This parameter defines the size of the visualized data points.                        |
| ``marker_size``              |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-markertype:         | This parameter defines the style of the visualized data points. The effect on the     |
| ``marker_type``              | numbers is the same as for gr_setmarkertype_.                                         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-numbins:            | This parameter defines the number of bins representing a hexagonal cell in the plot.  |
| ``num_bins``                 | The default value is 40. Restricted to hexbin_, histogram_ and polar_histogram_.      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-norm:               | This parameter specifies the type of normalization applied to the polar_histogram_.   |
| ``normalization``            | The possible values are:                                                              |
|                              |                                                                                       |
|                              | - ``count``: Default normalization scheme. The height of each bar is the number of    |
|                              |   observations in each bin. The sum of the bar heights is theta.                      |
|                              | - ``probability``: The height of each bar is the relative number of observations.     |
|                              |   Each height is calculated as (number of observations in bin/total number of         |
|                              |   observations). The sum of the bar heights is 1.                                     |
|                              | - ``countdensity``: The height of each bar is the number of observations in bin/width |
|                              |   of bin.                                                                             |
|                              | - ``pdf``: Probability density function estimate. The height of each bar is (number   |
|                              |   of observations in the bin)/(total number of observations * width of bin). The area |
|                              |   of each bar is the relative number of observations. The sum of the bar areas is 1.  |
|                              | - ``cumcount``: The height of each bar is the cumulative number of observations in    |
|                              |   each bin and all previous bins. The height of the last bar is theta.                |
|                              | - ``cdf``: Cumulative distribution function estimate. The height of each bar is equal |
|                              |   to the cumulative relative number of observations in the bin and all previous bins. |
|                              |   The height of the last bar is 1.                                                    |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-squareaspectratio:  | This defines whether the aspect ratio of the data (x, y) is forced to be equal and    |
| ``only_square_aspect_ratio`` | kept this way. Note that this parameter will not work if the ``keep_aspect_ratio``    |
|                              | parameter is set to 0. This parameter can have values of 0 or 1.                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-orientation:        | This parameter defines the orientation of the displayed series. They can be drawn     |
| ``orientation``              | either ``horizontal`` or ``vertical``, with ``horizontal`` being the default.         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-rflip:              | This parameter determines whether or not the r-axis is flipped. Restricted to         |
| ``r_flip``                   | polar_histogram_.                                                                     |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-rlim:               | This parameter defines the upper and lower radius limits. It can be used as follows:  |
| ``r_lim``                    | ``r_lim:min,max``. Only works for polar plots.                                        |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-rlog:               | This parameter determines whether the r values are displayed in a logarithmic scale.  |
| ``r_log``                    | Only works for polar plots.                                                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-resamplemethod:     | This parameter defines the resampling method to be used. The possible values are      |
| ``resample_method``          |                                                                                       |
|                              | - ``nearest``,                                                                        |
|                              | - ``linear``,                                                                         |
|                              | - ``lanczos`` and                                                                     |
|                              | - ``default`` (resample_method_).                                                     |
|                              |                                                                                       |
|                              | Restricted to heatmap_.                                                               |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-right:              | This parameter defines an axis at the specified position. The values of this key      |
| ``right``                    | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-rotation:           | This parameter specifies the counter-clockwise rotation angle, in degrees, of the     |
| ``rotation``                 | displayed data. This parameter must be set to an integer or double value. The default |
|                              | setting is no rotation. Restricted to isosurface_.                                    |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-stairs:             | If this parameter is enabled, only the outlines of the bins are drawn. The value can  |
| ``stairs``                   | be either 0 or 1. Restricted to polar_histogram_.                                     |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-stepwhere:          | This parameter defines how the steps are calculated. The possible values are ``pre``, |
| ``step_where``               | ``post`` and ``mid``, the latter being the default. Restricted to stairs_.            |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-style:              | This parameter determines the display of data within a bar plot. There are three      |
| ``style``                    | options: ``default``, ``stacked`` and ``lined``. ``Default`` means that all values    |
|                              | are displayed with a separate bar, while ``stacked`` means that the values are        |
|                              | displayed with bars stacked on top of each other. The ``lined`` option displays the   |
|                              | values with smaller bars next to each other. Restricted to barplot_.                  |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-thetaflip:          | This parameter determines whether the theta values are flipped. It can have a value   |
| ``theta_flip``               | of either 0 or 1. Restricted to polar_histogram_.                                     |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-thetadatalim:       | This parameter defines the upper and lower limits of the theta data. It can be used   |
| ``theta_data_lim``           | as follows: ``theta_data_lim:min,max``. Only works for polar plots.                   |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-thetalim:           | This parameter defines the upper and lower limits of theta. It can be used as         |
| ``theta_lim``                | follows: ``theta_lim:min,max``. Only works for polar plots.                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-tilt:               | This parameter specifies the tilt of the camera in degrees. This parameter must be    |
| ``tilt``                     | set to an integer or double value. The default setting is no tilt. Restricted to      |
|                              | isosurface_.                                                                          |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-title:              | This parameter defines the title of the displayed plot.                               |
| ``title``                    |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-top:                | This parameter defines an axis at the specified position. The values of this key      |
| ``top``                      | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-transformation:     | This parameter defines the type of transformation used for color mapping. This        |
| ``transformation``           | parameter must be an integer, with 1 being the default value. The effect of the       |
|                              | numbers is the same as for gr_shadepoints_ and restricted to shade_.                  |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-twinx:              | This parameter defines an axis at the specified position. The values of this key      |
| ``twin_x``                   | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-twiny:              | This parameter defines an axis at the specified position. The values of this key      |
| ``twin_y``                   | determine one or more series that will be plotted on that axis (multi_axes_).         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-usebins:            | When this parameter is set to 1, the first row and column of the data are interpreted |
| ``use_bins``                 | as information about the x_range and y_range.                                         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xbins:              | This parameter defines the number of bins in the x direction. This parameter must be  |
| ``x_bins``                   | an integer; the default value is 100. Restricted to shade_.                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xcolumns:           | This parameter defines the columns of the file that represent the x-data. This is     |
| ``x_columns``                | useful when multiple lines are included in the plot and their y-values do not always  |
|                              | correspond to the same x-points. Another use case would be non-linear x-values, which |
|                              | cannot be generated automatically by GRPlot.                                          |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xflip:              | This parameter determines whether or not the x-axis is flipped.                       |
| ``x_flip``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xgrid:              | Determines whether a x-grid is shown.                                                 |
| ``x_grid``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xlabel:             | This parameter defines the x-axis label of the displayed plot.                        |
| ``x_label``                  |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xlim:               | This parameter defines the upper and lower limits of the x-axis. It can be used as    |
| ``x_lim``                    | follows: ``x_lim:min,max``.                                                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xlog:               | This parameter determines whether the x-values are displayed in a logarithmic scale.  |
| ``x_log``                    |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xrange:             | This parameter defines the lower and upper x-values. The data is then mapped onto     |
| ``x_range``                  | these limits.                                                                         |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xyefile:            | This defines a special case of the data file. In this case, the first column          |
| ``xye_file``                 | represents the x-axis, the second the y-axis, and the third and fourth columns the    |
|                              | error values. The parameter can only have the values 0 or 1; if it has the value 1,   |
|                              | it is not necessary to set the ``error``` parameter to enable the error bars.         |
|                              | However, it can still be set to edit the resulting error bars.                        |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-xyzfile:            | This defines a special case of the data file. In this case, the first column          |
| ``xyz_file``                 | represents the x-axis, the second the y-axis, and the third the z-axis. The parameter |
|                              | can only have the values 0 or 1.                                                      |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ybins:              | This parameter defines the number of bins in the y direction. This parameter must be  |
| ``y_bins``                   | an integer; the default is 100. Restricted to shade_.                                 |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ycolumns:           | This parameter defines the columns of the file that represent the y-data. This        |
| ``y_columns``                | parameter is only useful when used alongside either the ``x_columns`` or              |
|                              | ``error_columns`` parameters. Any column not included by these two parameters is      |
|                              | interpreted as y-values.                                                              |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-yflip:              | This parameter determines whether or not the y-axis is flipped.                       |
| ``y_flip``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ygrid:              | Determines whether a y-grid is shown.                                                 |
| ``y_grid``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ylabel:             | This parameter determines the y-axis label for the displayed plot.                    |
| ``y_label``                  |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ylabels:            | This parameter enables users to assign labels to specific bars, which can display the |
| ``y_labels``                 | value of the bar, for example. The syntax of this parameter is ``y_labels:{label1,    |
|                              | label2, ...}``.                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ylim:               | This parameter defines the upper and lower limits of the y-axis. It can be used as    |
| ``y_lim``                    | follows: ``y_lim:min,max``.                                                           |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-ylog:               | This parameter determines whether the y-values are displayed in a logarithmic scale.  |
| ``y_log``                    |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-yrange:             | This parameter defines the lower and upper y-values. The data is scaled within these  |
| ``y_range``                  | limits.                                                                               |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-zgrid:              | Determines whether a z-grid is shown.                                                 |
| ``z_grid``                   |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-zlabel:             | This parameter defines the z-label of the displayed plot.                             |
| ``z_label``                  |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-zlim:               | This parameter defines the upper and lower z limits. It can be used as follows:       |
| ``z_lim``                    | ``z_lim:min,max``.                                                                    |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-zlog:               | This parameter determines whether the z-values are displayed in a logarithmic scale.  |
| ``z_log``                    |                                                                                       |
+------------------------------+---------------------------------------------------------------------------------------+
| .. _link-zrange:             | This parameter defines the lower and upper z-values. The data is scaled within these  |
| ``z_range``                  | limits.                                                                               |
+------------------------------+---------------------------------------------------------------------------------------+

Restricted parameters
---------------------

The following additional options can be provided on the command line:

+--------------------------------------------------------+-------------------------------------------------------------+
| Option                                                 | Description                                                 |
+========================================================+=============================================================+
| ``--plot <data-file-1> <parameter-file-1> --plot ...`` | GRPlot also supports figures containing multiple plots      |
|                                                        | using the ``--plot`` command-line option. After this        |
|                                                        | keyword, the data file must be named, followed by any       |
|                                                        | specific plot parameters that should be applied to that     |
|                                                        | plot. Interactions can also be used in each subplot.        |
|                                                        | See multiplot_ for examples.                                |
+--------------------------------------------------------+-------------------------------------------------------------+
| ``--listen <port>``                                    | Another option for using GRPlot is via a sender-receiver    |
|                                                        | mechanism. To do this, start GRPlot with the parameter      |
|                                                        | ``--listen <port>``. This is intended to be used with       |
|                                                        | `GRM networking functions`.                                 |
+--------------------------------------------------------+-------------------------------------------------------------+
| ``--size width,height``                                | This command can be used to change the initial size of the  |
|                                                        | window at the beginning of the command line arguments.      |
+--------------------------------------------------------+-------------------------------------------------------------+
| ``--test <command-file> <data-file> <parameter>``      | In most cases, the plots created from GRPlot support        |
|                                                        | interactions. These interactions can be used manually or    |
|                                                        | via test cases. Furthermore, these test cases enable the    |
|                                                        | automatic testing of all GRPlot functionalities. The main   |
|                                                        | purpose of  these test cases is to verify whether any       |
|                                                        | changes affect existing interactions.                       |
+--------------------------------------------------------+-------------------------------------------------------------+
| ``--help <plot_type>`` or ``-h``                       | This command-line option opens the help window for GRPlot.  |
|                                                        | Use the `<plot_type>` option to get extra information about |
|                                                        | a specific plot type.                                       |
+--------------------------------------------------------+-------------------------------------------------------------+

.. _colormap: /colormaps.html
.. _gr_shadepoints: /c-gr.html?highlight=gr_shadepoints#_CPPv414gr_shadepointsiPdPdiii
.. _gr_setmarkertype: /c-gr.html?highlight=gr_setmarkertype#_CPPv416gr_setmarkertypei
.. _GRM networking functions: /c-grm.html#networking-functions
.. _multi_axes: /grplot/plot_types.html#multiple-axes
.. _multi_series: /grplot/plot_types.html#mixed-plots
.. _multiplot: /grplot/plot_types.html#multiplot
.. _resample_method: /resampling_methods.html#resampling-methods
.. _data_file: /grplot/data_files.html
.. _contour: /grplot/plot_types.html#contour
.. _contourf: /grplot/plot_types.html#contourf
.. _heatmap: /grplot/plot_types.html#heatmap
.. _imshow: /grplot/plot_types.html#imshow
.. _marginal_heatmap: /grplot/plot_types.html#marginal_heatmap
.. _surface: /grplot/plot_types.html#surface
.. _wireframe: /grplot/plot_types.html#wireframe
.. _line: /grplot/plot_types.html#line
.. _scatter: /grplot/plot_types.html#scatter
.. _line3: /grplot/plot_types.html#line3
.. _scatter3: /grplot/plot_types.html#scatter3
.. _quiver: /grplot/plot_types.html#quiver
.. _pie: /grplot/plot_types.html#pie
.. _volume: /grplot/plot_types.html#volume
.. _isosurface: /grplot/plot_types.html#isosurface
.. _polar_line: /grplot/plot_types.html#polar_line
.. _polar_scatter: /grplot/plot_types.html#polar_scatter
.. _polar_heatmap: /grplot/plot_types.html#polar_heatmap
.. _polar_histogram: /grplot/plot_types.html#polar_histogram
.. _barplot: /grplot/plot_types.html#barplot
.. _stem: /grplot/plot_types.html#stem
.. _stairs: /grplot/plot_types.html#stairs
.. _histogram: /grplot/plot_types.html#histogram
.. _hexbin: /grplot/plot_types.html#hexbin
.. _shade: /grplot/plot_types.html#shade
.. _tricontour: /grplot/plot_types.html#tricontour
.. _trisurface: /grplot/plot_types.html#trisurface

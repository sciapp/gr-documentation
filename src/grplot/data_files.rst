Data Files
==========

CSV (Default)
-------------

These files contain the data to be plotted. As well as the data, these files may contain parameters that modify the
plot. It is important to note that any parameters in these files will always be applied if possible, unless they are
overwritten by command line parameters. For the data file, all command line parameters are valid except ``file``. The
parameters in the header are formatted slightly differently to those in the command line. They always start with a
``#``, followed by the key-value pair, which, unlike the command-line parameters, can include whitespaces. Multiple
values are separated by ``,``.

For example, the start of the header could look like this:

.. code-block:: bash

    # title : Test
    # x_label : x
    # y_label : y
    # x_columns:1
    # y_columns:2,3,4

The line following the header may contain column labels that will be used to create a legend within the plot. If this is
not specified as ``legend_line:1``, GRPlot will check if the first entry in the line is a number, and use this
information to determine whether to create a legend. Another way to specify the column labels is to use a header entry
such as ``#legend:<val>,<val>,<val>``. Each entry is separated by ``,``, meaning that no value after or between two
commas will skip the label for that specific column. Regardless of their position, spaces will not be ignored. If there
is a header entry like the one in the previous example, GRPlot will always treat the first line as a data line, unless
``legend_line:1`` is used. In this case, the previous labels will be replaced.

Every other line in the file includes data values, and blank lines can be ignored by setting ``ignore_blank_lines:1``.
Data items must be separated by one of these symbols (``,``, ``;``, ``|``, `` ``, ``\t``), and this symbol must remain
consistent throughout the dataset. The program will automatically determine the delimiter using the first line that
is not part of the header. Depending on the plot type, the data is interpreted differently. The following list shows how
data is treated for different plot types:

- contour_, contourf_, heatmap_, imshow_, marginal_heatmap_, surface_, wireframe_: The expected data is a matrix. Each
  element of the matrix is displayed according to its position within the matrix. These elements are interpreted as
  values in the x- and y-directions. When the ``use_bins`` parameter is set to 1, the first row and column of the data
  are interpreted as information about the ``x_range`` and ``y_range``. The previously explained data format cannot
  handle non-linear x- or y-values. Another format is available for this, which allows the x-, y- and z-values to be
  defined. Each line contains a triplet of x-, y- and z-values separated by spaces. The x-values must change first. To
  activate this option, use the ``xyz_file`` parameter with the value 1.

- line_, scatter_: One or more columns are expected here. Each column will be displayed in a single plot. Therefore, the
  values in the columns are interpreted as y-values. In combination with the ``error`` parameter, every second (and
  third) column is interpreted as an error value. A more detailed description of the ``error`` parameter can be found in
  the :ref:`key-value pair section <link-error>`. Another option enables users to specify which columns should contain
  the x-, y- and error values. For this, the ``x_columns``, ``y_columns`` and ``error_columns`` parameters can be used.

- isosurface_, volume_: The expected data consists of multiple matrices, each separated by an empty line. Each matrix
  represents a slice inside the volume.

- line3_, scatter_, scatter3_, tricontour_, trisurface_: Three columns of data are expected, representing the x-, y- and
  z-values.

- barplot_, stem_, stairs_: One or more columns are expected. Each column will be displayed in a single plot. Therefore,
  the values in the columns are interpreted as y-values. In combination with the ``error`` parameter, the second (and
  third) column is interpreted as error values. A more detailed description of the ``error`` parameter can be found in
  the :ref:`key-value pair section <link-error>`. Another option allows the user to define which columns include the x-,
  y- and error values. For this, the ``x_columns``, ``y_columns``, and ``error_columns`` parameters can be used.

- pie_: The expected data consists of 1–4 lines. The first line represents the data to be displayed. The next three rows
  are used to set the RGB values for the pie charts. Each row represents one RGB element.

- polar_histogram_: One column representing the values is expected.

- polar_line_, polar_scatter_: The expected data are pairs of columns containing angles and values.

- polar_heatmap_: The expected data is a matrix. Each element of the matrix is displayed according to its position
  within the matrix. These elements are interpreted as values in the theta(x) and radial(y) directions. If not
  specified, theta will range from 0.0 to 360.0, while r(radial) will range from 0.0 to 3.0. Both parameters can be
  modified using ``theta_range`` for theta and ``r_range`` for r.

- quiver_: The expected data are two matrices. The first matrix contains information about the x-directions, and the
  second matrix contains information about the y-directions.

- hexbin_, shade_: The expected data are two columns representing the x- and y-data.

- histogram_: One or more columns are expected. Each column will be displayed in a single plot. Therefore, the values
  inside the columns are interpreted as x-values. In combination with the ``error`` parameter, the second (and third)
  column is interpreted as error values. A more detailed description of the ``error`` parameter can be found in the
  :ref:`key-value pair section <link-error>`. Another option allows the user to define which columns include the x-, y-
  (weights) and error values. For this, the ``x_columns``, ``y_columns``, and ``error_columns`` parameters can be used.

Plot types that expect the same data shape as other plot types can be converted using an interactive menu.

Following parameters can be useful for it:

:ref:`columns <link-columns>`, :ref:`file <link-file>`, :ref:`x_columns <link-xcolumns>`,
:ref:`xye_file <link-xyefile>`, :ref:`xyz_file <link-xyzfile>`, :ref:`y_columns <link-ycolumns>`

.. _contour: /grplot/plot_types.html#contour
.. _contourf: /grplot/plot_types.html#contourf
.. _heatmap: /grplot/plot_types.html#_heatmap
.. _imshow: /grplot/plot_types.html#_imshow
.. _marginal_heatmap: /grplot/plot_types.html#_marginal_heatmap
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

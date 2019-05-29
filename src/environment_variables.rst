.. _environment_variables:

Environment Variables
---------------------

GR and GKS can be configured using a number of environment variables.
The following table lists these environment variables and their effects.
For information on how to set an environment variable, see the sections below.

.. list-table::
   :header-rows: 1

   * - Variable
     - Description
   * - ``GRDIR``
     - Path to the GR installation directory

       Example: ``/usr/local/gr/``
   * - ``GRLIB``
     - Path to the GR library directory

       Example: ``/usr/local/gr/lib``
   * - ``GKS_FONTPATH``
     - Path to the GKS fonts directory

       Example: ``/usr/local/gr/fonts``
   * - ``GKS_FILEPATH``
     - Path to the file GKS should write its output to

       Example: ``output.png``
   * - ``GKS_CONID``
     - File descriptor GKS should write its output to

       Example: ``1``
   * - ``GKS_WSTYPE``
     - Default workstation type

       Example: ``png``

       See also: :ref:`workstation_types`
   * - ``GKS_ENCODING``
     - Input encoding used for GKS functions

       Example: ``UTF-8``

       See also: :ref:`encoding`
   * - ``GKS_DOUBLE_BUF``
     - Only draw when :c:func:`gr_updatews` is called
   * - ``GKS_USE_CAIRO_BMP``
     - Use the **cairoplugin** for BMP output instead of the **gsplugin**

       See also: :ref:`File Formats <cairoplugin_gsplugin>`
   * - ``GKS_USE_CAIRO_JPG``
     - Use the **cairoplugin** for JPEG output instead of the **gsplugin**

       See also: :ref:`File Formats <cairoplugin_gsplugin>`
   * - ``GKS_USE_CAIRO_PNG``
     - Use the **cairoplugin** for PNG output instead of the **gsplugin**

       See also: :ref:`File Formats <cairoplugin_gsplugin>`
   * - ``GKS_USE_CAIRO_TIF``
     - Use the **cairoplugin** for Tiff output instead of the **gsplugin**

       See also: :ref:`File Formats <cairoplugin_gsplugin>`
   * - ``GKS_VIDEO_OPTS``
     - Resolution and framerate when using the **videoplugin**

       Example: ``1920x1080@60``

       See also: :ref:`gks_video_opts`
   * - ``GKS_GKSQT_PREVENT_RESIZE``
     - Prevent automated resizing in **gksqt**
   * - ``GKS_QT_VERSION``
     - Qt version to use in the **qtplugin**

       Example: ``5``
   * - ``GKS_NO_EXIT_HANDLER``
     - Do not set an exit handler
   * - ``GKS_DISABLE_PAGE_SUFFIX``
     - | Do not add a page suffix to the file name when writing more than
       | once to a file which does not natively support pagination

Setting Environment Variables on macOS or Linux
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To set an environment variable in a shell on macOS or Linux, you can use:

.. code-block:: bash

   export VARIABLE_NAME=value

Alternatively, for running a single command with the variable set, you can
also use:

.. code-block:: bash

   VARIABLE_NAME=value command


Setting Environment Variables on Windows
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To set an environment variable in *cmd.exe* on Windows, you can use:

.. code-block:: bash

   set VARIABLE_NAME=value

Setting Environment Variables in Programs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Many programming languages offer ways to set environment variables as well:

.. code-block:: python

    import os

    os.environ["VARIABLE_NAME"] = "value"

.. code-block:: c

    #include <stdlib.h>

    /* ... */

    setenv("VARIABLE_NAME", "value", 1);

.. code-block:: julia

    ENV["VARIABLE_NAME"] = "value"

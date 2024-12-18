.. _workstation_types:

Workstation Types
-----------------

The layered architecture of GR and GKS allows the use of a wide variety
of GUI toolkits and file formats using so-called workstations. You can
select the workstation by setting the ``GKS_WSTYPE`` environment variable
or by explicitly opening it using :c:func:`gks_openws`. These workstation types
will also be used when you print the output to a file using
:c:func:`gr_beginprint`, :jl:func:`GR.beginprint(pathname)`,
:py:func:`gr.beginprint` or :py:func:`mlab.savefig`.

File Formats
^^^^^^^^^^^^

============ ===================== ================
Plugin       GKS_WSTYPE            File Type
============ ===================== ================
*built-in*   pdf / 102             PDF
*built-in*   ps / 62               PS
*built-in*   eps / 62              EPS
videoplugin  gif / 130             GIF
videoplugin  mov / 120             MOV
videoplugin  mov / 121             HiDPI MOV
videoplugin  mp4 / 160             MP4
videoplugin  webm / 161            WEBM
videoplugin  ogg / 162             OGG
cairoplugin  bmp / 145             BMP
gsplugin     bmp / 320             BMP
aggplugin    ppm / 170             PPM
cairoplugin  jpg / jpeg / 144      JPEG
gsplugin     jpg / jpeg / 321      JPEG
aggplugin    jpg / jpeg / 172      JPEG
cairoplugin  png / 140             PNG
gsplugin     png / 322             PNG
aggplugin    png / 171             PNG
cairoplugin  tif / tiff / 146      TIFF
gsplugin     tif / tiff / 323      TIFF
figplugin    fig / 370             FIG
svgplugin    svg / 382             SVG
wmfplugin    wmf / 390             WMF
htmplugin    html / 430            HTML
pgfplugin    pgf / 314             TEX
============ ===================== ================

.. _cairoplugin_gsplugin:

Both the **cairoplugin** and the **gsplugin** can be used to create PNG, JPEG,
BMP and TIFF files. PNG and JPEG files can be created by the **aggplugin** as
well.
If it is available, the **cairoplugin** will be used by default, but the
:ref:`environment variables <environment_variables>` ``GKS_USE_GS_PNG``,
``GKS_USE_GS_JPG``, ``GKS_USE_GS_BMP`` or ``GKS_USE_GS_TIF`` can be set to use
the **gsplugin** and ``GKS_USE_AGG_PNG`` or ``GKS_USE_AGG_JPG`` can be set to
use the **aggplugin** instead.

.. _gks_video_opts:

Configuring Video Output Options
````````````````````````````````

The video files generated by the **videoplugin** have a default resolution
of 720 x 720 pixels at 24 frames per second. You can change those values
by setting the ``GKS_VIDEO_OPTS`` environment variable to one of the
following values:

- ``<framerate>``
- ``<width>x<height>``
- ``<width>x<height>@<framerate>``

mov video files can additionally be generated in HiDPI mode if supported by
ffmpeg. This doubles the internal resolution while using the given resolution
for playback size in supporting video players (primarily Apple QuickTime). To
enable HiDPI mode for mov videos either use the ``GKS_WSTYPE`` 121 or append
``@x2`` to the ``GKS_VIDEO_OPTS``, for example:

- ``1920x1080@60@x2``

.. _integrations:

Integrations
^^^^^^^^^^^^

============ ===================== ================
Plugin       GKS_WSTYPE            Description
============ ===================== ================
qtplugin     381                   Qt 4
qt5plugin    381                   Qt 5
qt6plugin    381                   Qt 6
gtkplugin    371                   GTK+
wxplugin     380                   wxWidgets
glplugin     420                   OpenGL
============ ===================== ================

By default the Qt-plugins use Qt's internal drawing functions. This behavior
can be changed to use either cairo or agg to render the image by setting the
:ref:`environment variables <environment_variables>` ``GKS_QT_USE_CAIRO`` or
``GKS_QT_USE_AGG``.

Applications
^^^^^^^^^^^^

=============== ============ ===================== =======================
Application     Plugin       GKS_WSTYPE            Operating System
=============== ============ ===================== =======================
gksqt           qt5plugin    411 / gksqt           Windows / Linux / macOS
GKSTerm         quartzplugin 400 / quartz          macOS
GKS 5 (X11)     x11plugin    211 / x11             Linux / macOS
GKS 5 (Windows) *built-in*   41                    Windows
=============== ============ ===================== =======================


Special Workstation Types
^^^^^^^^^^^^^^^^^^^^^^^^^

No Output
`````````

To use GR without generating output, you can use workstation type 100. You will still be able to explicitly write output to a file using :c:func:`gr_beginprint` or similar GR functions, but there will be no implicit output to an application or file.

Memory
``````

To write an image directly to memory as 32-bit RGBA data, you can allocate the memory and then use a specially constructed filename with the format ``!<width>x<height>@<pointer>.mem`` using hexadecimal notation for the pointer, e.g. by passing it to :c:func:`gr_beginprint`. Once GR has finished writing the image, e.g. after calling :c:func:`gr_endprint`, the memory will contain the image data.


.. code-block:: python

	# Allocate image memory, e.g. using numpy
	import numpy as np
	width, height = 1920, 1080
	image = np.zeros((height, width, 4), np.uint8)
	pointer = image.ctypes.data

	# Draw something into the memory using gr
	import gr
	gr.beginprint('!{}x{}@{:x}.mem'.format(width, height, pointer))
	gr.polyline([0, 1], [0, 1])
	gr.endprint()

	# Use the image memory, e.g. using PIL/pillow
	from PIL import Image
	image = Image.fromarray(image, 'RGBA')
	# ...

.. code-block:: c

	/* Allocate image memory */
	int width = 1920;
	int height = 1080;
	unsigned char *data = malloc(height * width * 4);

	/* Draw something into the memory using GR */
	double x[] = {0, 1};
	double y[] = {0, 1};
	char filename[32];
	sprintf(filename, "!%dx%d@%p.mem", width, height, data);
	gr_beginprint(filename);
	gr_polyline(2, x, y);
	gr_endprint();

	/* Use the image memory and free it afterwards */
	/* ... */
	free(data);

Workstation Types
-----------------

The layered architecture of GR and GKS allows the use of a wide variety
of GUI toolkits and file formats using so-called workstations. You can
select the workstation by setting the ``GKS_WSTYPE`` environment variable
or by explicitly opening it using :c:func:`gks_openws`. These workstation types
will also be used when you print the output to a file using
:c:func:`gr_beginprint`, :jl:func:`GR.beginprint(pathname)`,
:py:func:`gr.beginprint` or :py:func:`mlab.savefig`.

File formats
^^^^^^^^^^^^

============ ===================== ================
Plugin       GKS_WSTYPE            File Type
============ ===================== ================
*built-in*   pdf / 102             PDF
*built-in*   ps / 62               PS
*built-in*   eps / 62              EPS
*built-in*   gif / 130             GIF
movplugin    mov / 120             MOV
gsplugin     bmp / 320             BMP
gsplugin     jpg / jpeg / 321      JPEG
gsplugin     png / 322             PNG
cairoplugin  png / 140             PNG
gsplugin     tif / tiff / 323      TIFF
figplugin    fig / 370             FIG
svgplugin    svg / 382             SVG
wmfplugin    wmf / 390             WMF
htmplugin    html / 430            HTML
pgfplugin    pgf / 314             PGF
============ ===================== ================


Integrations
^^^^^^^^^^^^

============ ===================== ================
Plugin       GKS_WSTYPE            Description
============ ===================== ================
qtplugin     381                   Qt 4
qt5plugin    381                   Qt 5
gtkplugin    371                   GTK+
wxplugin     380                   wxWidgets
glplugin     420                   OpenGL
============ ===================== ================


Applications
^^^^^^^^^^^^

============ ===================== ================
Plugin       GKS_WSTYPE            Operating System
============ ===================== ================
*built-in*   211                   Linux
*built-in*   41                    Windows
quartzplugin 400                   macOS
============ ===================== ================

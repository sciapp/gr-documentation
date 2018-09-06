Python Package gr
=================

Installation
------------

GR is available on `PyPI <https://pypi.python.org/pypi/gr/>`_ and we recommend installing it with pip:

.. code-block:: bash

   pip install gr

This will automatically install both the GR runtime and the Python wrapper. You may need to install some additional dependencies on Linux:

- Debian/Ubuntu:
   ``apt install libxt6 libxrender1 libxext6 libgl1-mesa-glx libqt5widgets5``
- CentOS 7:
   ``yum install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- Fedora 28:
   ``dnf install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- openSUSE 42.3 / 15:
   ``zypper install libXt6 libXrender1 libXext6 Mesa-libGL1 libQt5Widgets5``
- CentOS 6 / Other Linux distributions
   ``yum install libXt libXrender libXext Mesa-libGL qt-x11``

   **Note:** The CentOS 6 build is used for other Linux distributions, so you may have to
   adapt its requirements to your system.

For information on building the GR runtime yourself, see
`Building the GR Runtime <building.html>`_.

Docker and other headless Linux systems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- GR does not require a connection to an X server for its non-interactive
  output formats, but you may still need the X11 libraries listed above,
  e.g. for creating PNGs with the cairo plugin.
- GR3 uses GLX for OpenGL context creation, which requires a connection to an X
  server. If you are using a headless sytem, e.g. a Docker container, you can
  use Xvfb or similar tools to start an X server that can be used by GR3,
  although it may only provide software rendering.

Getting Started
---------------

After installing GR, you can try it out by creating a simple plot:

.. code-block:: python

   from gr.pygr import mlab
   mlab.plot(range(100), lambda x: x**2)

.. image:: _static/img/mlab_plots/plot_demo.png

Tutorials
---------

You can find several tutorials on using GR in the :doc:`Tutorials <tutorials/index>` section.

Examples
--------

You can find a collection of Python scripts using GR in the :doc:`Examples <examples/index>` section.

API Reference
-------------

The Python API for GR consists of:

.. toctree::

    python-gr.rst
    python-gr-pygr.rst
    python-gr-pygr-mlab.rst
    python-gr3.rst

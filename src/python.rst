Python Package gr
=================

Installation
------------

GR is available on `PyPI <https://pypi.python.org/pypi/gr/>`_ and we recommend installing it with pip:

.. code-block:: bash

   pip install gr

This will automatically install both the GR runtime and the Python wrapper. You may need to install some additional dependencies on Linux:

- Debian/Ubuntu:
   ``apt install libxt6 libxrender1 libgl1-mesa-glx libqt5widgets5``
- CentOS 7:
   ``yum install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- Fedora 28:
   ``dnf install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- openSUSE 42.3:
   ``zypper install libXt6 libXrender1 libXext6 Mesa-libGL1 libQt5Widgets5``

For information on building the GR runtime yourself, see the `Building the GR Runtime <building.html>`_.

Getting Started
---------------

After installing GR, you can try it out by creating a simple plot:

.. code-block:: python

   from gr import pygr
   pygr.plot(list(x**2 for x in range(100)))

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

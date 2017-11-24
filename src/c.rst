C library GR
============

Installation
------------

Linux packages
^^^^^^^^^^^^^^

Since GR v0.17.2 we provide `python-gr` `.rpm` and `.deb` packages for various
Linux distributions using
`openSUSE Build Service <https://build.opensuse.org>`_. Your operating systems
package manager will cope with package dependencies.

Please follow the installation instructions for your operating system described
`here <https://software.opensuse.org/download.html?project=science:gr-framework&package=python-gr>`_.


Prerequisites
^^^^^^^^^^^^^

The GR distribution contains a script (``build_deps``) which may help
you to prepare your system for the installation of the GR framework::

    % lib/build-deps

          OS name: Linux
     Distribution: Red Hat
      Description: Fedora 20 (Heisenbug)
          Release: 20
           Kernel: 3.19.8-100.fc20.x86_64
     Architecture: x86_64

    The following pre-installation steps are required for a GR framework
    software installation:

    yum install gcc gcc-c++ gcc-gfortran PyQt4-devel ghostscript-devel \
    texlive-collection-latex texlive-dvipng cmake patch


The following table shows which packages are required to support the different
features:

+---------------+----------------------+----------------------+
|               |- Debian / Rasbian    |- Fedora              |
|               |- Ubuntu              |- RedHat              |
+===============+======================+======================+
|**required:**                                                |
+---------------+----------------------+----------------------+
|               |- make                |Development Tools     |
|               |- gcc                 |                      |
|               |- g++                 |                      |
+---------------+----------------------+----------------------+
|               |- libx11-dev          |Basic X Window System |
|               |- libxft-dev          |                      |
|               |- libxt-dev           |                      |
+---------------+----------------------+----------------------+
|Python support |- python2.7-dev       |- python-devel        |
|               |- python-numpy        |- numpy               |
+---------------+----------------------+----------------------+
|**recommended:**                                             |
+---------------+----------------------+----------------------+
|LaTeX support  |- texlive-latex3      |- texlive             |
|               |- dvipng              |- dvipng              |
+---------------+----------------------+----------------------+
|OpenGL         |- python-opengl       |PyOpenGL              |
|               |- libgl1-mesa-dev     |                      |
+---------------+----------------------+----------------------+
|Qt embedding   |- qt4-dev-tools       |- qt4-devel           |
|               |- pyqt4-dev-tools     |- PyQt4               |
+---------------+----------------------+----------------------+
|**optional:**                                                |
+---------------+----------------------+----------------------+
|Image output   |libgs-dev             |ghostscript-devel     |
+---------------+----------------------+----------------------+
|PDF import     |libmupdf-dev          |mupdf-devel           |
+---------------+----------------------+----------------------+
|MOV export     |        ffmpeg-2.x (source build)            |
+---------------+----------------------+----------------------+
|wxWidgets      |- libgtk2.0-dev       |- wxBase.x86_64       |
|               |- libwxgtk2.8-dev     |- wxGTK-devel.x86_64  |
|               |- python-wxgtk2.8     |- wxPython            |
+---------------+----------------------+----------------------+
|GLFW           |libglfw3-dev          |glfw-devel            |
+---------------+----------------------+----------------------+
|ØMQ            |libzmq3-dev           |zeromq3-devel         |
+---------------+----------------------+----------------------+
|**for the demos:**                                           |
+---------------+----------------------+----------------------+
|Audio demos    |python-pyaudio        |pyaudio               |
+---------------+----------------------+----------------------+

Instead of manually installing Python and required modules it's highly
recommended to use a python bundle, eg.
`Anaconda <https://continuum.io/downloads>`_, instead. This is
especially true for Windows and OS X.

Those distributions provide more packages that you can think you will ever
need and they are very easy to update using package managers.

.. note::
    We are providing binary packages for Anaconda, which can be
    obtained from `conda.anaconda.org <https://conda.anaconda.org>`_ and
    then be installed with the ``conda install`` command.

For Linux, Windows or OS X you can download and install ready-to-use
packages with a single command::

    conda install -c https://conda.anaconda.org/jheinen gr
    python

If you don't have Miniconda or Anaconda installed, you can download
them from `Continuum <https://continuum.io/downloads>`_ and use a
command-line installer. For Miniconda on OS X, in the shell execute::

    bash Miniconda-3.x.x-MacOSX-x86_64.sh
    export PATH=~/miniconda/bin:$PATH
    conda install -c https://conda.anaconda.org/jheinen gr
    python

Alternatively, to use the GR framework with Anaconda, you simply have
to extend the Python path::

    export GRDIR=/usr/local/gr
    export PYTHONPATH=${PYTHONPATH}:${GRDIR}/lib/python
    anaconda


Source install from git
^^^^^^^^^^^^^^^^^^^^^^^

Clone the main source using::

    git clone https://github.com/jheinen/gr

Installation into single directory using `Makefile`::

    cd gr
    make
    make install
    make clean
    export PYTHONPATH=${PYTHONPATH}:/usr/local/gr/lib/python

This will install the GR framework into the directory ``/usr/local/gr``. You can
choose any other destination by specifying the ``GRDIR`` variable, e.g.::

    make GRDIR=/opt/gr

To create a self-contained GR distribution you can use the ``self`` target::

    make self

On slow systems, you can have a coffee now, as the system will download
and build several static libraries.

Getting Started
---------------

After installing GR, you can try it out by creating a simple plot:

.. code-block:: C

   #include <gr.h>

   int main(void) {
     /* TODO: example code */
     return 0;
   }

API Reference
-------------

The C API for GR consists of:

.. toctree::

    c-gr.rst
    c-gr3.rst

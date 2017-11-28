Building the GR Runtime
-----------------------

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

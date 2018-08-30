C library GR
============

Installation
------------

You can manually install prebuilt binaries for the GR runtime or install a `Linux package <#linux-packages>`_.

================ ============ =======================================================================================================
Operating System Architecture
================ ============ =======================================================================================================
macOS            x86_64       `gr-latest-Darwin-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-Darwin-x86_64.tar.gz>`_
Debian           x86_64       `gr-latest-Debian-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-Debian-x86_64.tar.gz>`_
Ubuntu           x86_64       `gr-latest-Ubuntu-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-Ubuntu-x86_64.tar.gz>`_
CentOS 7         x86_64       `gr-latest-CentOS-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-CentOS-x86_64.tar.gz>`_
CentOS 6         x86_64       `gr-latest-Linux-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-Linux-x86_64.tar.gz>`_
Windows          x86_64       `gr-latest-Windows-x86_64.tar.gz <https://gr-framework.org/downloads/gr-latest-Windows-x86_64.tar.gz>`_
Windows          i686         `gr-latest-Windows-i686.tar.gz <https://gr-framework.org/downloads/gr-latest-Windows-i686.tar.gz>`_
================ ============ =======================================================================================================

You may need to install some additional dependencies on Linux:

- Debian/Ubuntu:
   ``apt install libxt6 libxrender1 libgl1-mesa-glx libqt5widgets5``
- CentOS 7:
   ``yum install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- Fedora 28:
   ``dnf install libXt libXrender libXext mesa-libGL qt5-qtbase-gui``
- openSUSE 42.3:
   ``zypper install libXt6 libXrender1 libXext6 Mesa-libGL1 libQt5Widgets5``

For other versions of GR, see the `downloads <https://gr-framework.org/downloads/>`_.
For information on building the GR runtime yourself, see the `Building the GR Runtime <building.html>`_.

Docker and other headless Linux systems
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

GR does not require X11 for its non-interactive output formats, however GR3
uses GLX for OpenGL context creation, which requires a connection to an X
server. If you are using a headless sytem, e.g. a Docker container, you can
use Xvfb or similar tools to start an X server that can be used by GR3,
although it may only provide software rendering.

Linux packages
^^^^^^^^^^^^^^

Since GR v0.17.2 we provide `python-gr` `.rpm` and `.deb` packages for various
Linux distributions using
`openSUSE Build Service <https://build.opensuse.org>`_. Your operating systems
package manager will cope with package dependencies.

Please follow the installation instructions for your operating system described
`here <https://software.opensuse.org/download.html?project=science:gr-framework&package=python-gr>`_.

Getting Started
---------------

After installing GR, you can try it out by creating a simple plot:

.. code-block:: C

   #include <stdio.h>
   #include <gr.h>

   int main(void) {
       double x[] = {0, 0.2, 0.4, 0.6, 0.8, 1.0};
       double y[] = {0.3, 0.5, 0.4, 0.2, 0.6, 0.7};
       gr_polyline(6, x, y);
       gr_axes(gr_tick(0, 1), gr_tick(0, 1), 0, 0, 1, 1, -0.01);
       // Press any key to exit
       getc(stdin);
       return 0;
   }

Tutorials
---------

You can find several tutorials on using GR in the :doc:`Tutorials <tutorials/index>` section.

API Reference
-------------

The C API for GR consists of:

.. toctree::

    c-gr.rst
    c-gr3.rst
    c-gks.rst

Using GR3 with Docker
^^^^^^^^^^^^^^^^^^^^^

If you install the `Julia <../julia.html>`_ or `Python <../python.html>`_
packages for GR or download the pre-built Linux binaries within a Docker
container, you will be able to use the non-interactive
`output formats <../workstations.html>`_ like PNG images or SVG files.

GR3 however requires X11 and OpenGL libraries to be installed and a connection
to an X server to exist, which will usually not be the case inside a Docker
container. To be able to use GR3 as well, you will need to install the X11 and
OpenGL dependencies listed on the `Julia <../julia.html>`_,
`Python <../python.html>`_ or `C <../c.html>`_ page and run Xvfb or a similar
tool to start an X server that can then be used by GR3.

The following example shows how to use GR3 from within an official Julia or
Python Docker container:

.. code-block:: python

    % docker run -it python:stretch bash
    
    # Install X11, OpenGL and Xvfb
    $ apt update -y
    $ apt install -y libxt6 libxrender1 libxext6 libgl1-mesa-glx xvfb
    
    # Set GKS_WSTYPE to output to PNG images
    $ export GKS_WSTYPE=png
    
    # Install the Python Package gr
    $ pip3 install gr
    
    # Run Python within an Xvfb session
    $ xvfb-run --server-args '-screen 0 1920x1080x24' python3
    >>> import gr3
    >>> # GR3 will use software rendering, e.g. using llvmpipe
    >>> gr3.getrenderpathstring()
    [...] 3.0 Mesa 13.0.6 - Gallium 0.4 on llvmpipe (LLVM 3.9, 256 bits) [...]

.. code-block:: julia

    % docker run -it julia:stretch bash
    
    # Install X11, OpenGL and Xvfb
    $ apt update -y
    $ apt install -y libxt6 libxrender1 libxext6 libgl1-mesa-glx xvfb
    
    # Set GKS_WSTYPE to output to PNG images
    $ export GKS_WSTYPE=png
    
    # Install the Julia Package GR
    $ julia
    julia> using Pkg
    julia> Pkg.add("GR")
    
    # Run Julia within an Xvfb session
    $ xvfb-run --server-args '-screen 0 1920x1080x24' julia
    julia> using GR
    julia> # GR3 will use software rendering, e.g. using llvmpipe
    julia> gr3.getrenderpathstring()
    [...] 3.0 Mesa 13.0.6 - Gallium 0.4 on llvmpipe (LLVM 3.9, 256 bits) [...]

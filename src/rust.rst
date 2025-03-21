Rust crate gr
==============

Installation
------------

#. `Install GR <c.html#installation>`_
#. In your Rust project, issue the command ``cargo add gr``
#. Set the ``GRLIB`` environment variable to the path of *GR*'s ``lib`` directory / folder

   - It should contain ``.lib``, ``.dylib`` or ``.so`` files
   - On Windows (and also MinGW) you should use an absolute path
   - On Linux and Mac some paths will be searched when ``GRLIB`` doesn't refer to a usable installation:

     - ``~/gr`` (ie. implicit ``GRLIB=~/gr/lib``)
     - ``/usr/gr`` (ie. implicit ``GRLIB=/usr/gr/lib``)
     - ``/usr/local/gr`` (ie. implicit ``GRLIB=/usr/local/gr/lib``)
   - This variable is only needed at compile-time

#. The crate's build-script outputs a path as ``cargo:lib_dir``

   - The Rust program will need to load libraries from that path! **Make it accessible!**
     You may want to put this into your ``PATH`` or your binaries' rpaths.
   - On Windows this is **not** the same as ``GRLIB``!
     It will point to the ``bin`` folder, which contains the ``.dll`` files.

Getting Started
---------------

To test your setup, try compiling and running this simple application:

.. code-block:: rust

   use ::gr::gr;
   use std::io::{stdin, Read};

   fn main() {
       gr::polyline(2, &[0.0, 1.0], &[0.0, 1.0]).unwrap();
       gr::updatews();
       stdin().bytes().next();
   }

Examples
--------

The crate includes a collection of Rust scripts using GR in its ``examples/`` directory.
Run them using cargo:

.. code-block:: bash

   cargo run --example

API Reference
-------------

The Rust API for GR consists of:

.. toctree::

   rust-gr.rst
   rust-gks.rst

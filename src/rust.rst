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

#. Your Rust program will need to dynamically load *GR* libraries! **Make them accessible!**

   - Ensure *GR*'s library files are found by your OS's dynamic loader.
     If that's already the case, you don't have to do anything.
   - You may need to edit your ``PATH`` (Windows), ``LD_LIBRARY_PATH`` (Linux), ``DYLD_LIBRARY_PATH`` (Mac) or your binaries' rpaths.
   - On Windows, the required path is not the same as ``GRLIB``!
     It should point to the ``bin`` folder, which contains the ``.dll`` files.
     Alternatively, you can just copy the ``.dll`` files next to your ``.exe``.
   - On Linux and Mac, you can set the rpath when building an executable from a Rust crate like this:

     .. code-block:: sh

        RUSTFLAGS="-C link-arg=-Wl,-rpath,/my/path/to/gr/lib" cargo build
        ./target/debug/mybinaryname  # or run it using `cargo run` above

     This is useful if *GR* isn't found normally, but the resulting binary shouldn't be distributed.

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

Encoding Support
----------------

Historically, GR has been using Latin-1 / ISO 8859-1 encoded strings, both
internally and in its API. Since version 0.39.0 UTF-8 is used internally, to
allow a greater set of possible characters and symbols to be represented. The
API still expects input as Latin-1, but users can set the input encoding using
the ``GKS_ENCODING`` environment variable, which currently supports Latin-1 and
UTF-8.

Some `workstation types <workstations.html>`_ lack any support for UTF-8 or
Unicode in general (e.g. *pdf* and *ps*) and others are restricted to a subset
of characters due to missing glyphs in the fonts distributed as part of GR
(e.g. *cairo*).

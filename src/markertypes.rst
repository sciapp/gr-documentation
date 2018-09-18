Marker Types
------------

The following table contains the marker types available when using
:jl:func:`GR.setmarkertype`, :py:func:`gr.setmarkertype` or
:c:func:`gr_setmarkertype`:

.. |mt001| image:: _static/img/markertypes/omark.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_OMARK
.. |mt002| image:: _static/img/markertypes/hline.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_HLINE
.. |mt003| image:: _static/img/markertypes/vline.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_VLINE
.. |mt004| image:: _static/img/markertypes/star_8.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR_8
.. |mt005| image:: _static/img/markertypes/star_7.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR_7
.. |mt006| image:: _static/img/markertypes/star_6.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR_6
.. |mt007| image:: _static/img/markertypes/star_5.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR_5
.. |mt008| image:: _static/img/markertypes/star_4.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR_4
.. |mt009| image:: _static/img/markertypes/octagon.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_OCTAGON
.. |mt010| image:: _static/img/markertypes/heptagon.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_HEPTAGON
.. |mt011| image:: _static/img/markertypes/hexagon.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_HEXAGON
.. |mt012| image:: _static/img/markertypes/pentagon.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_PENTAGON
.. |mt013| image:: _static/img/markertypes/solid_plus.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_PLUS
.. |mt014| image:: _static/img/markertypes/hollow_plus.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_HOLLOW_PLUS
.. |mt015| image:: _static/img/markertypes/solid_tri_left.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_TRI_LEFT
.. |mt016| image:: _static/img/markertypes/solid_tri_right.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_TRI_RIGHT
.. |mt017| image:: _static/img/markertypes/tri_up_down.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_TRI_UP_DOWN
.. |mt018| image:: _static/img/markertypes/solid_star.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_STAR
.. |mt019| image:: _static/img/markertypes/star.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_STAR
.. |mt020| image:: _static/img/markertypes/solid_diamond.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_DIAMOND
.. |mt021| image:: _static/img/markertypes/diamond.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_DIAMOND
.. |mt022| image:: _static/img/markertypes/solid_hglass.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_HOURGLASS
.. |mt023| image:: _static/img/markertypes/hourglass.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_HOURGLASS
.. |mt024| image:: _static/img/markertypes/solid_bowtie.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_BOWTIE
.. |mt025| image:: _static/img/markertypes/bowtie.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_BOWTIE
.. |mt026| image:: _static/img/markertypes/solid_square.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_SQUARE
.. |mt027| image:: _static/img/markertypes/square.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SQUARE
.. |mt028| image:: _static/img/markertypes/solid_tri_down.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_TRI_DOWN
.. |mt029| image:: _static/img/markertypes/triangle_down.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_TRIANGLE_DOWN
.. |mt030| image:: _static/img/markertypes/solid_tri_up.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_TRI_UP
.. |mt031| image:: _static/img/markertypes/triangle_up.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_TRIANGLE_UP
.. |mt032| image:: _static/img/markertypes/solid_circle.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_SOLID_CIRCLE
.. |mt033| image:: _static/img/markertypes/dot.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_DOT
.. |mt034| image:: _static/img/markertypes/plus.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_PLUS
.. |mt035| image:: _static/img/markertypes/asterisk.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_ASTERISK
.. |mt036| image:: _static/img/markertypes/circle.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_CIRCLE
.. |mt037| image:: _static/img/markertypes/diagonal_cross.png
   :scale: 100%
   :align: middle
   :alt: MARKERTYPE_DIAGONAL_CROSS

+-------+----------------------------+---------+---------------------------------------+
+ Index + Marker Type                +         + Description                           +
+=======+============================+=========+=======================================+
+    1  + MARKERTYPE_DOT             + |mt033| + Smallest displayable dot              +
+-------+----------------------------+---------+---------------------------------------+
+    2  + MARKERTYPE_PLUS            + |mt034| + Plus sign                             +
+-------+----------------------------+---------+---------------------------------------+
+    3  + MARKERTYPE_ASTERISK        + |mt035| + Asterisk                              +
+-------+----------------------------+---------+---------------------------------------+
+    4  + MARKERTYPE_CIRCLE          + |mt036| + Hollow circle                         +
+-------+----------------------------+---------+---------------------------------------+
+    5  + MARKERTYPE_DIAGONAL_CROSS  + |mt037| + Diagonal cross                        +
+-------+----------------------------+---------+---------------------------------------+
+   -1  + MARKERTYPE_SOLID_CIRCLE    + |mt032| + Filled circle                         +
+-------+----------------------------+---------+---------------------------------------+
+   -2  + MARKERTYPE_TRIANGLE_UP     + |mt031| + Hollow triangle pointing upward       +
+-------+----------------------------+---------+---------------------------------------+
+   -3  + MARKERTYPE_SOLID_TRI_UP    + |mt030| + Filled triangle pointing upward       +
+-------+----------------------------+---------+---------------------------------------+
+   -4  + MARKERTYPE_TRIANGLE_DOWN   + |mt029| + Hollow triangle pointing downward     +
+-------+----------------------------+---------+---------------------------------------+
+   -5  + MARKERTYPE_SOLID_TRI_DOWN  + |mt028| + Filled triangle pointing downward     +
+-------+----------------------------+---------+---------------------------------------+
+   -6  + MARKERTYPE_SQUARE          + |mt027| + Hollow square                         +
+-------+----------------------------+---------+---------------------------------------+
+   -7  + MARKERTYPE_SOLID_SQUARE    + |mt026| + Filled square                         +
+-------+----------------------------+---------+---------------------------------------+
+   -8  + MARKERTYPE_BOWTIE          + |mt025| + Hollow bowtie                         +
+-------+----------------------------+---------+---------------------------------------+
+   -9  + MARKERTYPE_SOLID_BOWTIE    + |mt024| + Filled bowtie                         +
+-------+----------------------------+---------+---------------------------------------+
+  -10  + MARKERTYPE_HOURGLASS       + |mt023| + Hollow hourglass                      +
+-------+----------------------------+---------+---------------------------------------+
+  -11  + MARKERTYPE_SOLID_HGLASS    + |mt022| + Filled hourglass                      +
+-------+----------------------------+---------+---------------------------------------+
+  -12  + MARKERTYPE_DIAMOND         + |mt021| + Hollow diamond                        +
+-------+----------------------------+---------+---------------------------------------+
+  -13  + MARKERTYPE_SOLID_DIAMOND   + |mt020| + Filled Diamond                        +
+-------+----------------------------+---------+---------------------------------------+
+  -14  + MARKERTYPE_STAR            + |mt019| + Hollow star                           +
+-------+----------------------------+---------+---------------------------------------+
+  -15  + MARKERTYPE_SOLID_STAR      + |mt018| + Filled Star                           +
+-------+----------------------------+---------+---------------------------------------+
+  -16  + MARKERTYPE_TRI_UP_DOWN     + |mt017| + Hollow triangles pointing up and down +
+-------+----------------------------+---------+---------------------------------------+
+  -17  + MARKERTYPE_SOLID_TRI_RIGHT + |mt016| + Filled triangle point right           +
+-------+----------------------------+---------+---------------------------------------+
+  -18  + MARKERTYPE_SOLID_TRI_LEFT  + |mt015| + Filled triangle pointing left         +
+-------+----------------------------+---------+---------------------------------------+
+  -19  + MARKERTYPE_HOLLOW_PLUS     + |mt014| + Hollow plus sign                      +
+-------+----------------------------+---------+---------------------------------------+
+  -20  + MARKERTYPE_SOLID_PLUS      + |mt013| + Solid plus sign                       +
+-------+----------------------------+---------+---------------------------------------+
+  -21  + MARKERTYPE_PENTAGON        + |mt012| + Pentagon                              +
+-------+----------------------------+---------+---------------------------------------+
+  -22  + MARKERTYPE_HEXAGON         + |mt011| + Hexagon                               +
+-------+----------------------------+---------+---------------------------------------+
+  -23  + MARKERTYPE_HEPTAGON        + |mt010| + Heptagon                              +
+-------+----------------------------+---------+---------------------------------------+
+  -24  + MARKERTYPE_OCTAGON         + |mt009| + Octagon                               +
+-------+----------------------------+---------+---------------------------------------+
+  -25  + MARKERTYPE_STAR_4          + |mt008| + 4-pointed star                        +
+-------+----------------------------+---------+---------------------------------------+
+  -26  + MARKERTYPE_STAR_5          + |mt007| + 5-pointed star (Pentagram)            +
+-------+----------------------------+---------+---------------------------------------+
+  -27  + MARKERTYPE_STAR_6          + |mt006| + 6-pointed star (Hexagram)             +
+-------+----------------------------+---------+---------------------------------------+
+  -28  + MARKERTYPE_STAR_7          + |mt005| + 7-pointed star (Heptagram)            +
+-------+----------------------------+---------+---------------------------------------+
+  -29  + MARKERTYPE_STAR_8          + |mt004| + 8-pointed star (Octagram)             +
+-------+----------------------------+---------+---------------------------------------+
+  -30  + MARKERTYPE_VLINE           + |mt003| + Vertical line                         +
+-------+----------------------------+---------+---------------------------------------+
+  -31  + MARKERTYPE_HLINE           + |mt002| + Horizontal line                       +
+-------+----------------------------+---------+---------------------------------------+
+  -32  + MARKERTYPE_OMARK           + |mt001| + O-mark                                +
+-------+----------------------------+---------+---------------------------------------+

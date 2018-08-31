Built-in Colormaps
------------------

While you can set your own, custom colormaps using GR, the following 48
colormaps are already built in and can be used by specifying their index
to :c:func:`gr_setcolormap`, :jl:func:`GR.setcolormap(index::Int)`,
:py:func:`gr.setcolormap` or :py:func:`mlab.setcolormap`:

.. |colormap_uniform| image:: _static/img/colormaps/uniform.png
   :scale: 100%
   :align: middle
.. |colormap_temperature| image:: _static/img/colormaps/temperature.png
   :scale: 100%
   :align: middle
.. |colormap_grayscale| image:: _static/img/colormaps/grayscale.png
   :scale: 100%
   :align: middle
.. |colormap_glowing| image:: _static/img/colormaps/glowing.png
   :scale: 100%
   :align: middle
.. |colormap_rainbowlike| image:: _static/img/colormaps/rainbowlike.png
   :scale: 100%
   :align: middle
.. |colormap_geologic| image:: _static/img/colormaps/geologic.png
   :scale: 100%
   :align: middle
.. |colormap_greenscale| image:: _static/img/colormaps/greenscale.png
   :scale: 100%
   :align: middle
.. |colormap_cyanscale| image:: _static/img/colormaps/cyanscale.png
   :scale: 100%
   :align: middle
.. |colormap_bluescale| image:: _static/img/colormaps/bluescale.png
   :scale: 100%
   :align: middle
.. |colormap_magentascale| image:: _static/img/colormaps/magentascale.png
   :scale: 100%
   :align: middle
.. |colormap_redscale| image:: _static/img/colormaps/redscale.png
   :scale: 100%
   :align: middle
.. |colormap_flame| image:: _static/img/colormaps/flame.png
   :scale: 100%
   :align: middle
.. |colormap_brownscale| image:: _static/img/colormaps/brownscale.png
   :scale: 100%
   :align: middle
.. |colormap_pilatus| image:: _static/img/colormaps/pilatus.png
   :scale: 100%
   :align: middle
.. |colormap_autumn| image:: _static/img/colormaps/autumn.png
   :scale: 100%
   :align: middle
.. |colormap_bone| image:: _static/img/colormaps/bone.png
   :scale: 100%
   :align: middle
.. |colormap_cool| image:: _static/img/colormaps/cool.png
   :scale: 100%
   :align: middle
.. |colormap_copper| image:: _static/img/colormaps/copper.png
   :scale: 100%
   :align: middle
.. |colormap_gray| image:: _static/img/colormaps/gray.png
   :scale: 100%
   :align: middle
.. |colormap_hot| image:: _static/img/colormaps/hot.png
   :scale: 100%
   :align: middle
.. |colormap_hsv| image:: _static/img/colormaps/hsv.png
   :scale: 100%
   :align: middle
.. |colormap_jet| image:: _static/img/colormaps/jet.png
   :scale: 100%
   :align: middle
.. |colormap_pink| image:: _static/img/colormaps/pink.png
   :scale: 100%
   :align: middle
.. |colormap_spectral| image:: _static/img/colormaps/spectral.png
   :scale: 100%
   :align: middle
.. |colormap_spring| image:: _static/img/colormaps/spring.png
   :scale: 100%
   :align: middle
.. |colormap_summer| image:: _static/img/colormaps/summer.png
   :scale: 100%
   :align: middle
.. |colormap_winter| image:: _static/img/colormaps/winter.png
   :scale: 100%
   :align: middle
.. |colormap_gist_earth| image:: _static/img/colormaps/gist_earth.png
   :scale: 100%
   :align: middle
.. |colormap_gist_heat| image:: _static/img/colormaps/gist_heat.png
   :scale: 100%
   :align: middle
.. |colormap_gist_ncar| image:: _static/img/colormaps/gist_ncar.png
   :scale: 100%
   :align: middle
.. |colormap_gist_rainbow| image:: _static/img/colormaps/gist_rainbow.png
   :scale: 100%
   :align: middle
.. |colormap_gist_stern| image:: _static/img/colormaps/gist_stern.png
   :scale: 100%
   :align: middle
.. |colormap_afmhot| image:: _static/img/colormaps/afmhot.png
   :scale: 100%
   :align: middle
.. |colormap_brg| image:: _static/img/colormaps/brg.png
   :scale: 100%
   :align: middle
.. |colormap_bwr| image:: _static/img/colormaps/bwr.png
   :scale: 100%
   :align: middle
.. |colormap_coolwarm| image:: _static/img/colormaps/coolwarm.png
   :scale: 100%
   :align: middle
.. |colormap_cmrmap| image:: _static/img/colormaps/cmrmap.png
   :scale: 100%
   :align: middle
.. |colormap_cubehelix| image:: _static/img/colormaps/cubehelix.png
   :scale: 100%
   :align: middle
.. |colormap_gnuplot| image:: _static/img/colormaps/gnuplot.png
   :scale: 100%
   :align: middle
.. |colormap_gnuplot2| image:: _static/img/colormaps/gnuplot2.png
   :scale: 100%
   :align: middle
.. |colormap_ocean| image:: _static/img/colormaps/ocean.png
   :scale: 100%
   :align: middle
.. |colormap_rainbow| image:: _static/img/colormaps/rainbow.png
   :scale: 100%
   :align: middle
.. |colormap_seismic| image:: _static/img/colormaps/seismic.png
   :scale: 100%
   :align: middle
.. |colormap_terrain| image:: _static/img/colormaps/terrain.png
   :scale: 100%
   :align: middle
.. |colormap_viridis| image:: _static/img/colormaps/viridis.png
   :scale: 100%
   :align: middle
.. |colormap_inferno| image:: _static/img/colormaps/inferno.png
   :scale: 100%
   :align: middle
.. |colormap_plasma| image:: _static/img/colormaps/plasma.png
   :scale: 100%
   :align: middle
.. |colormap_magma| image:: _static/img/colormaps/magma.png
   :scale: 100%
   :align: middle
   
+-------+---------------+--------------------------------------------------+
+ Index + Name          +                                                  +
+=======+===============+==================================================+
+  0    + Uniform       + |colormap_uniform|                               +
+-------+---------------+--------------------------------------------------+
+  1    + Temperature   + |colormap_temperature|                           +
+-------+---------------+--------------------------------------------------+
+  2    + Grayscale     + |colormap_grayscale|                             +
+-------+---------------+--------------------------------------------------+
+  3    + Glowing       + |colormap_glowing|                               +
+-------+---------------+--------------------------------------------------+
+  4    + Rainbowlike   + |colormap_rainbowlike|                           +
+-------+---------------+--------------------------------------------------+
+  5    + Geologic      + |colormap_geologic|                              +
+-------+---------------+--------------------------------------------------+
+  6    + Greenscale    + |colormap_greenscale|                            +
+-------+---------------+--------------------------------------------------+
+  7    + Cyanscale     + |colormap_cyanscale|                             +
+-------+---------------+--------------------------------------------------+
+  8    + Bluescale     + |colormap_bluescale|                             +
+-------+---------------+--------------------------------------------------+
+  9    + Magentascale  + |colormap_magentascale|                          +
+-------+---------------+--------------------------------------------------+
+ 10    + Redscale      + |colormap_redscale|                              +
+-------+---------------+--------------------------------------------------+
+ 11    + Flame         + |colormap_flame|                                 +
+-------+---------------+--------------------------------------------------+
+ 12    + Brownscale    + |colormap_brownscale|                            +
+-------+---------------+--------------------------------------------------+
+ 13    + Pilatus       + |colormap_pilatus|                               +
+-------+---------------+--------------------------------------------------+
+ 14    + Autumn        + |colormap_autumn|                                +
+-------+---------------+--------------------------------------------------+
+ 15    + Bone          + |colormap_bone|                                  +
+-------+---------------+--------------------------------------------------+
+ 16    + Cool          + |colormap_cool|                                  +
+-------+---------------+--------------------------------------------------+
+ 17    + Copper        + |colormap_copper|                                +
+-------+---------------+--------------------------------------------------+
+ 18    + Gray          + |colormap_gray|                                  +
+-------+---------------+--------------------------------------------------+
+ 19    + Hot           + |colormap_hot|                                   +
+-------+---------------+--------------------------------------------------+
+ 20    + Hsv           + |colormap_hsv|                                   +
+-------+---------------+--------------------------------------------------+
+ 21    + Jet           + |colormap_jet|                                   +
+-------+---------------+--------------------------------------------------+
+ 22    + Pink          + |colormap_pink|                                  +
+-------+---------------+--------------------------------------------------+
+ 23    + Spectral      + |colormap_spectral|                              +
+-------+---------------+--------------------------------------------------+
+ 24    + Spring        + |colormap_spring|                                +
+-------+---------------+--------------------------------------------------+
+ 25    + Summer        + |colormap_summer|                                +
+-------+---------------+--------------------------------------------------+
+ 26    + Winter        + |colormap_winter|                                +
+-------+---------------+--------------------------------------------------+
+ 27    + Gist_Earth    + |colormap_gist_earth|                            +
+-------+---------------+--------------------------------------------------+
+ 28    + Gist_Heat     + |colormap_gist_heat|                             +
+-------+---------------+--------------------------------------------------+
+ 29    + Gist_Ncar     + |colormap_gist_ncar|                             +
+-------+---------------+--------------------------------------------------+
+ 30    + Gist_Rainbow  + |colormap_gist_rainbow|                          +
+-------+---------------+--------------------------------------------------+
+ 31    + Gist_Stern    + |colormap_gist_stern|                            +
+-------+---------------+--------------------------------------------------+
+ 32    + Afmhot        + |colormap_afmhot|                                +
+-------+---------------+--------------------------------------------------+
+ 33    + Brg           + |colormap_brg|                                   +
+-------+---------------+--------------------------------------------------+
+ 34    + Bwr           + |colormap_bwr|                                   +
+-------+---------------+--------------------------------------------------+
+ 35    + Coolwarm      + |colormap_coolwarm|                              +
+-------+---------------+--------------------------------------------------+
+ 36    + Cmrmap        + |colormap_cmrmap|                                +
+-------+---------------+--------------------------------------------------+
+ 37    + Cubehelix     + |colormap_cubehelix|                             +
+-------+---------------+--------------------------------------------------+
+ 38    + Gnuplot       + |colormap_gnuplot|                               +
+-------+---------------+--------------------------------------------------+
+ 39    + Gnuplot2      + |colormap_gnuplot2|                              +
+-------+---------------+--------------------------------------------------+
+ 40    + Ocean         + |colormap_ocean|                                 +
+-------+---------------+--------------------------------------------------+
+ 41    + Rainbow       + |colormap_rainbow|                               +
+-------+---------------+--------------------------------------------------+
+ 42    + Seismic       + |colormap_seismic|                               +
+-------+---------------+--------------------------------------------------+
+ 43    + Terrain       + |colormap_terrain|                               +
+-------+---------------+--------------------------------------------------+
+ 44    + Viridis       + |colormap_viridis|                               +
+-------+---------------+--------------------------------------------------+
+ 45    + Inferno       + |colormap_inferno|                               +
+-------+---------------+--------------------------------------------------+
+ 46    + Plasma        + |colormap_plasma|                                +
+-------+---------------+--------------------------------------------------+
+ 47    + Magma         + |colormap_magma|                                 +
+-------+---------------+--------------------------------------------------+
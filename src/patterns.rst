Patterns and Hatch Styles
-------------------------

When using :c:func:`gr_fillarea`, :jl:func:`GR.fillarea` or
:py:func:`gr.fillarea`, you can not only fill the area with a solid color or
draw its boundary, you can also use one of the following patterns or hatch
styles. To do so, you need to set the interior fill style (e.g. with
:py:func:`gr.setfillintstyle`) to ``INTSTYLE_PATTERN`` (2) or
``INTSTYLE_HATCH`` (3). You can then select a pattern or hatch style
using :py:func:`gr.setfillstyle` and its index.

Patterns
^^^^^^^^

.. |pattern001| image:: _static/img/patterns/pattern1.png
   :scale: 100%
   :align: middle
.. |pattern002| image:: _static/img/patterns/pattern2.png
   :scale: 100%
   :align: middle
.. |pattern003| image:: _static/img/patterns/pattern3.png
   :scale: 100%
   :align: middle
.. |pattern004| image:: _static/img/patterns/pattern4.png
   :scale: 100%
   :align: middle
.. |pattern005| image:: _static/img/patterns/pattern5.png
   :scale: 100%
   :align: middle
.. |pattern006| image:: _static/img/patterns/pattern6.png
   :scale: 100%
   :align: middle
.. |pattern007| image:: _static/img/patterns/pattern7.png
   :scale: 100%
   :align: middle
.. |pattern008| image:: _static/img/patterns/pattern8.png
   :scale: 100%
   :align: middle
.. |pattern009| image:: _static/img/patterns/pattern9.png
   :scale: 100%
   :align: middle
.. |pattern010| image:: _static/img/patterns/pattern10.png
   :scale: 100%
   :align: middle
.. |pattern011| image:: _static/img/patterns/pattern11.png
   :scale: 100%
   :align: middle
.. |pattern012| image:: _static/img/patterns/pattern12.png
   :scale: 100%
   :align: middle
.. |pattern013| image:: _static/img/patterns/pattern13.png
   :scale: 100%
   :align: middle
.. |pattern014| image:: _static/img/patterns/pattern14.png
   :scale: 100%
   :align: middle
.. |pattern015| image:: _static/img/patterns/pattern15.png
   :scale: 100%
   :align: middle
.. |pattern016| image:: _static/img/patterns/pattern16.png
   :scale: 100%
   :align: middle
.. |pattern017| image:: _static/img/patterns/pattern17.png
   :scale: 100%
   :align: middle
.. |pattern018| image:: _static/img/patterns/pattern18.png
   :scale: 100%
   :align: middle
.. |pattern019| image:: _static/img/patterns/pattern19.png
   :scale: 100%
   :align: middle
.. |pattern020| image:: _static/img/patterns/pattern20.png
   :scale: 100%
   :align: middle
.. |pattern021| image:: _static/img/patterns/pattern21.png
   :scale: 100%
   :align: middle
.. |pattern022| image:: _static/img/patterns/pattern22.png
   :scale: 100%
   :align: middle
.. |pattern023| image:: _static/img/patterns/pattern23.png
   :scale: 100%
   :align: middle
.. |pattern024| image:: _static/img/patterns/pattern24.png
   :scale: 100%
   :align: middle
.. |pattern025| image:: _static/img/patterns/pattern25.png
   :scale: 100%
   :align: middle
.. |pattern026| image:: _static/img/patterns/pattern26.png
   :scale: 100%
   :align: middle
.. |pattern027| image:: _static/img/patterns/pattern27.png
   :scale: 100%
   :align: middle
.. |pattern028| image:: _static/img/patterns/pattern28.png
   :scale: 100%
   :align: middle
.. |pattern029| image:: _static/img/patterns/pattern29.png
   :scale: 100%
   :align: middle
.. |pattern030| image:: _static/img/patterns/pattern30.png
   :scale: 100%
   :align: middle
.. |pattern031| image:: _static/img/patterns/pattern31.png
   :scale: 100%
   :align: middle
.. |pattern032| image:: _static/img/patterns/pattern32.png
   :scale: 100%
   :align: middle
.. |pattern033| image:: _static/img/patterns/pattern33.png
   :scale: 100%
   :align: middle
.. |pattern034| image:: _static/img/patterns/pattern34.png
   :scale: 100%
   :align: middle
.. |pattern035| image:: _static/img/patterns/pattern35.png
   :scale: 100%
   :align: middle
.. |pattern036| image:: _static/img/patterns/pattern36.png
   :scale: 100%
   :align: middle
.. |pattern037| image:: _static/img/patterns/pattern37.png
   :scale: 100%
   :align: middle
.. |pattern038| image:: _static/img/patterns/pattern38.png
   :scale: 100%
   :align: middle
.. |pattern039| image:: _static/img/patterns/pattern39.png
   :scale: 100%
   :align: middle
.. |pattern040| image:: _static/img/patterns/pattern40.png
   :scale: 100%
   :align: middle
.. |pattern041| image:: _static/img/patterns/pattern41.png
   :scale: 100%
   :align: middle
.. |pattern042| image:: _static/img/patterns/pattern42.png
   :scale: 100%
   :align: middle
.. |pattern043| image:: _static/img/patterns/pattern43.png
   :scale: 100%
   :align: middle
.. |pattern044| image:: _static/img/patterns/pattern44.png
   :scale: 100%
   :align: middle
.. |pattern045| image:: _static/img/patterns/pattern45.png
   :scale: 100%
   :align: middle
.. |pattern046| image:: _static/img/patterns/pattern46.png
   :scale: 100%
   :align: middle
.. |pattern047| image:: _static/img/patterns/pattern47.png
   :scale: 100%
   :align: middle
.. |pattern048| image:: _static/img/patterns/pattern48.png
   :scale: 100%
   :align: middle
.. |pattern049| image:: _static/img/patterns/pattern49.png
   :scale: 100%
   :align: middle
.. |pattern050| image:: _static/img/patterns/pattern50.png
   :scale: 100%
   :align: middle
.. |pattern051| image:: _static/img/patterns/pattern51.png
   :scale: 100%
   :align: middle
.. |pattern052| image:: _static/img/patterns/pattern52.png
   :scale: 100%
   :align: middle
.. |pattern053| image:: _static/img/patterns/pattern53.png
   :scale: 100%
   :align: middle
.. |pattern054| image:: _static/img/patterns/pattern54.png
   :scale: 100%
   :align: middle
.. |pattern055| image:: _static/img/patterns/pattern55.png
   :scale: 100%
   :align: middle
.. |pattern056| image:: _static/img/patterns/pattern56.png
   :scale: 100%
   :align: middle
.. |pattern057| image:: _static/img/patterns/pattern57.png
   :scale: 100%
   :align: middle
.. |pattern058| image:: _static/img/patterns/pattern58.png
   :scale: 100%
   :align: middle
.. |pattern059| image:: _static/img/patterns/pattern59.png
   :scale: 100%
   :align: middle
.. |pattern060| image:: _static/img/patterns/pattern60.png
   :scale: 100%
   :align: middle
.. |pattern061| image:: _static/img/patterns/pattern61.png
   :scale: 100%
   :align: middle
.. |pattern062| image:: _static/img/patterns/pattern62.png
   :scale: 100%
   :align: middle
.. |pattern063| image:: _static/img/patterns/pattern63.png
   :scale: 100%
   :align: middle
.. |pattern064| image:: _static/img/patterns/pattern64.png
   :scale: 100%
   :align: middle
.. |pattern065| image:: _static/img/patterns/pattern65.png
   :scale: 100%
   :align: middle
.. |pattern066| image:: _static/img/patterns/pattern66.png
   :scale: 100%
   :align: middle
.. |pattern067| image:: _static/img/patterns/pattern67.png
   :scale: 100%
   :align: middle
.. |pattern068| image:: _static/img/patterns/pattern68.png
   :scale: 100%
   :align: middle
.. |pattern069| image:: _static/img/patterns/pattern69.png
   :scale: 100%
   :align: middle
.. |pattern070| image:: _static/img/patterns/pattern70.png
   :scale: 100%
   :align: middle
.. |pattern071| image:: _static/img/patterns/pattern71.png
   :scale: 100%
   :align: middle
.. |pattern072| image:: _static/img/patterns/pattern72.png
   :scale: 100%
   :align: middle
.. |pattern073| image:: _static/img/patterns/pattern73.png
   :scale: 100%
   :align: middle
.. |pattern074| image:: _static/img/patterns/pattern74.png
   :scale: 100%
   :align: middle
.. |pattern075| image:: _static/img/patterns/pattern75.png
   :scale: 100%
   :align: middle
.. |pattern076| image:: _static/img/patterns/pattern76.png
   :scale: 100%
   :align: middle
.. |pattern077| image:: _static/img/patterns/pattern77.png
   :scale: 100%
   :align: middle
.. |pattern078| image:: _static/img/patterns/pattern78.png
   :scale: 100%
   :align: middle
.. |pattern079| image:: _static/img/patterns/pattern79.png
   :scale: 100%
   :align: middle
.. |pattern080| image:: _static/img/patterns/pattern80.png
   :scale: 100%
   :align: middle
.. |pattern081| image:: _static/img/patterns/pattern81.png
   :scale: 100%
   :align: middle
.. |pattern082| image:: _static/img/patterns/pattern82.png
   :scale: 100%
   :align: middle
.. |pattern083| image:: _static/img/patterns/pattern83.png
   :scale: 100%
   :align: middle
.. |pattern084| image:: _static/img/patterns/pattern84.png
   :scale: 100%
   :align: middle
.. |pattern085| image:: _static/img/patterns/pattern85.png
   :scale: 100%
   :align: middle
.. |pattern086| image:: _static/img/patterns/pattern86.png
   :scale: 100%
   :align: middle
.. |pattern087| image:: _static/img/patterns/pattern87.png
   :scale: 100%
   :align: middle
.. |pattern088| image:: _static/img/patterns/pattern88.png
   :scale: 100%
   :align: middle
.. |pattern089| image:: _static/img/patterns/pattern89.png
   :scale: 100%
   :align: middle
.. |pattern090| image:: _static/img/patterns/pattern90.png
   :scale: 100%
   :align: middle
.. |pattern091| image:: _static/img/patterns/pattern91.png
   :scale: 100%
   :align: middle
.. |pattern092| image:: _static/img/patterns/pattern92.png
   :scale: 100%
   :align: middle
.. |pattern093| image:: _static/img/patterns/pattern93.png
   :scale: 100%
   :align: middle
.. |pattern094| image:: _static/img/patterns/pattern94.png
   :scale: 100%
   :align: middle
.. |pattern095| image:: _static/img/patterns/pattern95.png
   :scale: 100%
   :align: middle
.. |pattern096| image:: _static/img/patterns/pattern96.png
   :scale: 100%
   :align: middle
.. |pattern097| image:: _static/img/patterns/pattern97.png
   :scale: 100%
   :align: middle
.. |pattern098| image:: _static/img/patterns/pattern98.png
   :scale: 100%
   :align: middle
.. |pattern099| image:: _static/img/patterns/pattern99.png
   :scale: 100%
   :align: middle
.. |pattern100| image:: _static/img/patterns/pattern100.png
   :scale: 100%
   :align: middle
.. |pattern101| image:: _static/img/patterns/pattern101.png
   :scale: 100%
   :align: middle
.. |pattern102| image:: _static/img/patterns/pattern102.png
   :scale: 100%
   :align: middle
.. |pattern103| image:: _static/img/patterns/pattern103.png
   :scale: 100%
   :align: middle
.. |pattern104| image:: _static/img/patterns/pattern104.png
   :scale: 100%
   :align: middle
.. |pattern105| image:: _static/img/patterns/pattern105.png
   :scale: 100%
   :align: middle
.. |pattern106| image:: _static/img/patterns/pattern106.png
   :scale: 100%
   :align: middle
.. |pattern107| image:: _static/img/patterns/pattern107.png
   :scale: 100%
   :align: middle
.. |pattern108| image:: _static/img/patterns/pattern108.png
   :scale: 100%
   :align: middle

+-------+--------------+
+ Index + Pattern      +
+=======+==============+
+    1  + |pattern001| +
+-------+--------------+
+    2  + |pattern002| +
+-------+--------------+
+    3  + |pattern003| +
+-------+--------------+
+    4  + |pattern004| +
+-------+--------------+
+    5  + |pattern005| +
+-------+--------------+
+    6  + |pattern006| +
+-------+--------------+
+    7  + |pattern007| +
+-------+--------------+
+    8  + |pattern008| +
+-------+--------------+
+    9  + |pattern009| +
+-------+--------------+
+   10  + |pattern010| +
+-------+--------------+
+   11  + |pattern011| +
+-------+--------------+
+   12  + |pattern012| +
+-------+--------------+
+   13  + |pattern013| +
+-------+--------------+
+   14  + |pattern014| +
+-------+--------------+
+   15  + |pattern015| +
+-------+--------------+
+   16  + |pattern016| +
+-------+--------------+
+   17  + |pattern017| +
+-------+--------------+
+   18  + |pattern018| +
+-------+--------------+
+   19  + |pattern019| +
+-------+--------------+
+   20  + |pattern020| +
+-------+--------------+
+   21  + |pattern021| +
+-------+--------------+
+   22  + |pattern022| +
+-------+--------------+
+   23  + |pattern023| +
+-------+--------------+
+   24  + |pattern024| +
+-------+--------------+
+   25  + |pattern025| +
+-------+--------------+
+   26  + |pattern026| +
+-------+--------------+
+   27  + |pattern027| +
+-------+--------------+
+   28  + |pattern028| +
+-------+--------------+
+   29  + |pattern029| +
+-------+--------------+
+   30  + |pattern030| +
+-------+--------------+
+   31  + |pattern031| +
+-------+--------------+
+   32  + |pattern032| +
+-------+--------------+
+   33  + |pattern033| +
+-------+--------------+
+   34  + |pattern034| +
+-------+--------------+
+   35  + |pattern035| +
+-------+--------------+
+   36  + |pattern036| +
+-------+--------------+
+   37  + |pattern037| +
+-------+--------------+
+   38  + |pattern038| +
+-------+--------------+
+   39  + |pattern039| +
+-------+--------------+
+   40  + |pattern040| +
+-------+--------------+
+   41  + |pattern041| +
+-------+--------------+
+   42  + |pattern042| +
+-------+--------------+
+   43  + |pattern043| +
+-------+--------------+
+   44  + |pattern044| +
+-------+--------------+
+   45  + |pattern045| +
+-------+--------------+
+   46  + |pattern046| +
+-------+--------------+
+   47  + |pattern047| +
+-------+--------------+
+   48  + |pattern048| +
+-------+--------------+
+   49  + |pattern049| +
+-------+--------------+
+   50  + |pattern050| +
+-------+--------------+
+   51  + |pattern051| +
+-------+--------------+
+   52  + |pattern052| +
+-------+--------------+
+   53  + |pattern053| +
+-------+--------------+
+   54  + |pattern054| +
+-------+--------------+
+   55  + |pattern055| +
+-------+--------------+
+   56  + |pattern056| +
+-------+--------------+
+   57  + |pattern057| +
+-------+--------------+
+   58  + |pattern058| +
+-------+--------------+
+   59  + |pattern059| +
+-------+--------------+
+   60  + |pattern060| +
+-------+--------------+
+   61  + |pattern061| +
+-------+--------------+
+   62  + |pattern062| +
+-------+--------------+
+   63  + |pattern063| +
+-------+--------------+
+   64  + |pattern064| +
+-------+--------------+
+   65  + |pattern065| +
+-------+--------------+
+   66  + |pattern066| +
+-------+--------------+
+   67  + |pattern067| +
+-------+--------------+
+   68  + |pattern068| +
+-------+--------------+
+   69  + |pattern069| +
+-------+--------------+
+   70  + |pattern070| +
+-------+--------------+
+   71  + |pattern071| +
+-------+--------------+
+   72  + |pattern072| +
+-------+--------------+
+   73  + |pattern073| +
+-------+--------------+
+   74  + |pattern074| +
+-------+--------------+
+   75  + |pattern075| +
+-------+--------------+
+   76  + |pattern076| +
+-------+--------------+
+   77  + |pattern077| +
+-------+--------------+
+   78  + |pattern078| +
+-------+--------------+
+   79  + |pattern079| +
+-------+--------------+
+   80  + |pattern080| +
+-------+--------------+
+   81  + |pattern081| +
+-------+--------------+
+   82  + |pattern082| +
+-------+--------------+
+   83  + |pattern083| +
+-------+--------------+
+   84  + |pattern084| +
+-------+--------------+
+   85  + |pattern085| +
+-------+--------------+
+   86  + |pattern086| +
+-------+--------------+
+   87  + |pattern087| +
+-------+--------------+
+   88  + |pattern088| +
+-------+--------------+
+   89  + |pattern089| +
+-------+--------------+
+   90  + |pattern090| +
+-------+--------------+
+   91  + |pattern091| +
+-------+--------------+
+   92  + |pattern092| +
+-------+--------------+
+   93  + |pattern093| +
+-------+--------------+
+   94  + |pattern094| +
+-------+--------------+
+   95  + |pattern095| +
+-------+--------------+
+   96  + |pattern096| +
+-------+--------------+
+   97  + |pattern097| +
+-------+--------------+
+   98  + |pattern098| +
+-------+--------------+
+   99  + |pattern099| +
+-------+--------------+
+  100  + |pattern100| +
+-------+--------------+
+  101  + |pattern101| +
+-------+--------------+
+  102  + |pattern102| +
+-------+--------------+
+  103  + |pattern103| +
+-------+--------------+
+  104  + |pattern104| +
+-------+--------------+
+  105  + |pattern105| +
+-------+--------------+
+  106  + |pattern106| +
+-------+--------------+
+  107  + |pattern107| +
+-------+--------------+
+  108  + |pattern108| +
+-------+--------------+

Hatch Styles
^^^^^^^^^^^^

.. |hatch001| image:: _static/img/patterns/hatch1.png
   :scale: 100%
   :align: middle
.. |hatch002| image:: _static/img/patterns/hatch2.png
   :scale: 100%
   :align: middle
.. |hatch003| image:: _static/img/patterns/hatch3.png
   :scale: 100%
   :align: middle
.. |hatch004| image:: _static/img/patterns/hatch4.png
   :scale: 100%
   :align: middle
.. |hatch005| image:: _static/img/patterns/hatch5.png
   :scale: 100%
   :align: middle
.. |hatch006| image:: _static/img/patterns/hatch6.png
   :scale: 100%
   :align: middle
.. |hatch007| image:: _static/img/patterns/hatch7.png
   :scale: 100%
   :align: middle
.. |hatch008| image:: _static/img/patterns/hatch8.png
   :scale: 100%
   :align: middle
.. |hatch009| image:: _static/img/patterns/hatch9.png
   :scale: 100%
   :align: middle
.. |hatch010| image:: _static/img/patterns/hatch10.png
   :scale: 100%
   :align: middle
.. |hatch011| image:: _static/img/patterns/hatch11.png
   :scale: 100%
   :align: middle

+-------+------------+
+ Index +            +
+=======+============+
+    1  + |hatch001| +
+-------+------------+
+    2  + |hatch002| +
+-------+------------+
+    3  + |hatch003| +
+-------+------------+
+    4  + |hatch004| +
+-------+------------+
+    5  + |hatch005| +
+-------+------------+
+    6  + |hatch006| +
+-------+------------+
+    7  + |hatch007| +
+-------+------------+
+    8  + |hatch008| +
+-------+------------+
+    9  + |hatch009| +
+-------+------------+
+   10  + |hatch010| +
+-------+------------+
+   11  + |hatch011| +
+-------+------------+

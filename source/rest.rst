
.. index:: lib;rest


.. _lib-rest-label:

====
rest
====

Sphinx-ReST helper functions to generate the ReST documents.

.. todo::

    math support - http://www.sphinx-doc.org/en/stable/ext/math.html#math-support

.. index:: 
   pair: rest;sphinx


.. _lib-rest-text-styles-label:


text-styles
~~~~~~~~~~~

.. _lib-rest-italics-label:


italics
~~~~~~~

.. _lib-rest-bold-label:


bold
~~~~

.. _lib-rest-fixed-space-label:


fixed-space
~~~~~~~~~~~
or mono-space

.. _lib-rest-paragraph-label:


paragraph
~~~~~~~~~

.. code-block:: R



    p[([] 1 2 2 3)]

.. _lib-rest-subscript-label:


subscript
~~~~~~~~~

.. code-block:: R



    "H",sub["2"],"O"

.. _lib-rest-superscript-label:


superscript
~~~~~~~~~~~

.. code-block:: R



    "E = mc",sup["2"]

.. _lib-rest-list-label:


list
~~~~

.. _lib-rest-bullet-label:


bullet
~~~~~~
list

.. code-block:: R



    bl string`trade`price

.. _lib-rest-number-label:


number
~~~~~~

list

.. code-block:: R



    nl string`trade`price

.. _lib-rest-literal-label:


literal
~~~~~~~

block

.. code-block:: R



    lb string`trade`price

.. _lib-rest-dtb-label:


dtb
~~~

doctest block - evaluate the block

.. todo::

    protect the execution

.. code-block:: R



    dtb ("{x*y}[3;2]")

.. _lib-rest-dtb2-label:


dtb2
~~~~

doctest block - evaluate the block

.. todo::

    protect the execution

.. code-block:: R



    dtb2 ("{x*y}[3;2]")

.. _lib-rest-underline-label:


underline
~~~~~~~~~

the text with input charecter

.. code-block:: R



    ul["SubTitle";"-"]

.. _lib-rest-Title-label:


Title
~~~~~

.. code-block:: R



    t["Title"]

.. _lib-rest-Section-label:


Section
~~~~~~~

Title

.. code-block:: R



    st["SubTitle"]

.. _lib-rest-Subsection-label:


Subsection
~~~~~~~~~~

Title

.. code-block:: R



    sst["Subsection Title"]

.. _lib-rest-overline-underline-label:


overline-underline
~~~~~~~~~~~~~~~~~~

the text with input charecter

.. code-block:: R



    olul["Overline-Underline";"-"]

.. _lib-rest-dt-label:


dt
~~

Document Title

.. code-block:: R



    dt["Document Title"]

.. _lib-rest-dst-label:


dst
~~~

Document Subtitle

.. code-block:: R



    dst["Document Subtitle"]

.. _lib-rest-label-label:


label
~~~~~

.. code-block:: R



    lbl[`trade`schema]

.. _lib-rest-reference-label:


reference
~~~~~~~~~

.. code-block:: R



    ref[`trade`schema]

.. _lib-rest-field-label:


field
~~~~~

list

.. code-block:: R



    fn[fnl:`param`sym;"Instrument Id"]
.. code-block:: R



    fn[fnl:`returns;"Price"]

.. _lib-rest-prm-label:


prm
~~~

field list param

.. code-block:: R



    prm[fnl:`sym;"Instrument Id"]

.. _lib-rest-ret-label:


ret
~~~

field list ret

.. code-block:: R



    ret["Price"]

.. _lib-rest-inc-label:


inc
~~~

include a file

.. code-block:: R



    inc["resources/inclusion.txt"]

.. _lib-rest-ml-label:


ml
~~

multiline code

.. code-block:: R



    ml["test"]
.. code-block:: R



    ml[("test1";"test2")]

.. _lib-rest-ind-label:


ind
~~~

indent the content

.. code-block:: R



    ind[4;"1"]

.. _lib-rest-code-label:


code
~~~~

.. code-block:: R



    code[l:`R;e:"";fn:`sample.q;c:("show avg[2 3 4]";"count til 5")]
.. code-block:: R



    code2[c:("show avg[2 3 4]";"count til 5")]

.. _lib-rest-split-label:


split
~~~~~

.. code-block:: R



    split["-";"test-string"]

.. _lib-rest-img-label:


img
~~~

Substitutions

.. code-block:: R



    img[`$"resources/images/docq.png"]

.. _lib-rest-wrnImg-label:


wrnImg
~~~~~~

Substitutions Warn

.. code-block:: R



    wrnImg[]

.. _lib-rest-tipImg-label:


tipImg
~~~~~~

Substitutions Tip

.. code-block:: R



    tipImg[]
.. code-block:: R



    toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]]

.. _lib-rest-adm-label:


adm
~~~

admonition

.. code-block:: R



    adm[`warning;"Some warning"]
.. code-block:: R



    err["Some error"]
.. code-block:: R



    warn["Some warning"]
.. code-block:: R



    tip["Some tip"]
.. code-block:: R



    imp["Some important message"]
.. code-block:: R



    todo["Things pending to do."]

other admonition supported - danger,caution,hint,attention

.. _lib-rest-idx-label:


idx
~~~

index

.. code-block:: R



    idx[ ("schema";"trade")]

.. _lib-rest-idxt-label:


idxt
~~~~

index these tags

.. code-block:: R



    idxt[ n:"sample";il:("schema";"trade")]
.. code-block:: R



    toc[ ("samples")]

.. _lib-rest--label:





.. todo::

    Simplify the csv logic

.. code-block:: R



    \l sp.q
.. code-block:: R



    csvt p
.. code-block:: R



    .str.strif each (`str;12.;1b)

.. todo::

    tests


.. index:: lib;sphinx



.. _lib-sphinx-label:

======
sphinx
======
Sphinx-ReST helper functions to generate the ReST documents.

.. todo::

    list table
.. todo::

    math support - http://www.sphinx-doc.org/en/stable/ext/math.html#math-support
.. todo::

    http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter#
.. todo::

    http://www.sphinx-doc.org/en/stable/markup/index.html


.. _lib-sphinx-text-styles-label:


text-styles
~~~~~~~~~~~

.. _lib-sphinx-italics-label:


italics
~~~~~~~

.. _lib-sphinx-bold-label:


bold
~~~~

.. _lib-sphinx-fixed-space-label:


fixed-space
~~~~~~~~~~~
or mono-space

.. _lib-sphinx-paragraph-label:


paragraph
~~~~~~~~~

.. code-block:: R



    p[([] 1 2 2 3)]


.. _lib-sphinx-subscript-label:


subscript
~~~~~~~~~

.. code-block:: R



    "H",sub["2"],"O"


.. _lib-sphinx-superscript-label:


superscript
~~~~~~~~~~~

.. code-block:: R



    "E = mc",sup["2"]


.. _lib-sphinx-list-label:


list
~~~~

.. _lib-sphinx-bullet-label:


bullet
~~~~~~
list

.. code-block:: R



    bl string`trade`price


.. _lib-sphinx-number-label:


number
~~~~~~
list

.. code-block:: R



    nl string`trade`price


.. _lib-sphinx-literal-label:


literal
~~~~~~~
block

.. code-block:: R



    lb string`trade`price


.. _lib-sphinx-doctest-label:


doctest
~~~~~~~
block - evaluate the block

.. todo::

    protect the execution

.. code-block:: R



    dtb ("{x*y}[3;2]")


.. _lib-sphinx-underline-label:


underline
~~~~~~~~~
the text with input charecter

.. code-block:: R



    ul["SubTitle";"-"]


.. _lib-sphinx-Title-label:


Title
~~~~~

.. code-block:: R



    t["Title"]


.. _lib-sphinx-Section-label:


Section
~~~~~~~
Title

.. code-block:: R



    st["SubTitle"]


.. _lib-sphinx-Subsection-label:


Subsection
~~~~~~~~~~
Title

.. code-block:: R



    sst["Subsection Title"]


.. _lib-sphinx-overline-underline-label:


overline-underline
~~~~~~~~~~~~~~~~~~
the text with input charecter

.. code-block:: R



    olul["Overline-Underline";"-"]


.. _lib-sphinx-Document-label:


Document
~~~~~~~~
Title

.. code-block:: R



    dt["Document Title"]


.. _lib-sphinx-Document-label:


Document
~~~~~~~~
Subtitle

.. code-block:: R



    dst["Document Subtitle"]


.. _lib-sphinx-strif-label:


strif
~~~~~
handle the simple case otherwise flaten it to string

.. code-block:: R



    strif[`test]
.. code-block:: R



    strif[2#`test]
.. code-block:: R



    strif[string `test]
.. code-block:: R



    strif[string 2#`test]


.. _lib-sphinx-label-label:


label
~~~~~

.. code-block:: R



    lbl[`trade`schema]


.. _lib-sphinx-reference-label:


reference
~~~~~~~~~

.. code-block:: R



    ref[`trade`schema]


.. _lib-sphinx-field-label:


field
~~~~~
list

.. code-block:: R



    fn[fnl:`param`sym;"Instrument Id"]
.. code-block:: R



    fn[fnl:`returns;"Price"]


.. _lib-sphinx-field-label:


field
~~~~~
list param

.. code-block:: R



    prm[fnl:`sym;"Instrument Id"]


.. _lib-sphinx-field-label:


field
~~~~~
list ret

.. code-block:: R



    ret["Price"]


.. _lib-sphinx-include-label:


include
~~~~~~~

.. code-block:: R



    inc["resources/inclusion.txt"]


.. _lib-sphinx-multiline-label:


multiline
~~~~~~~~~
code

.. code-block:: R



    ml["test"]
.. code-block:: R



    ml[("test1";"test2")]


.. _lib-sphinx-ind-label:


ind
~~~
indent the content

.. code-block:: R



    ind[4;"1"]


.. _lib-sphinx-code-label:


code
~~~~

.. code-block:: R



    code[l:`R;e:"";fn:`sample.q;c:("show avg[2 3 4]";"count til 5")]
.. code-block:: R



    code2[c:("show avg[2 3 4]";"count til 5")]


.. _lib-sphinx-split-label:


split
~~~~~

.. code-block:: R



    split["-";"test-string"]


.. _lib-sphinx-Substitutions-label:


Substitutions
~~~~~~~~~~~~~

.. code-block:: R



    img[`$"resources/images/docq.png"]


.. _lib-sphinx-Substitutions-label:


Substitutions
~~~~~~~~~~~~~
Warn

.. code-block:: R



    wrnImg[]


.. _lib-sphinx-Substitutions-label:


Substitutions
~~~~~~~~~~~~~
Tip

.. code-block:: R



    tipImg[]
.. code-block:: R



    toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]]


.. _lib-sphinx-admonition-label:


admonition
~~~~~~~~~~

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


.. _lib-sphinx-index-label:


index
~~~~~

.. code-block:: R



    idx[ ("schema";"trade")]

.. todo::

    test code


.. _lib-sphinx--label:





.. todo::

    Simplify the csv logic

.. code-block:: R



    \l sp.q
.. code-block:: R



    csvt p
.. code-block:: R



    strif each (`str;12.;1b)


.. _lib-sphinx-simple-label:


simple
~~~~~~
table

.. todo::

    need to revisit this function

.. code-block:: R



    \l sp.q
.. code-block:: R



    tab[p]

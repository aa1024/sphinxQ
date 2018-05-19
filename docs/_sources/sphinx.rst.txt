
.. index:: lib 

======
sphinx
======
Sphinx-ReST helper functions to generate the ReST documents.

.. todo::

    list table 
.. todo::

    math support  - http://www.sphinx-doc.org/en/stable/ext/math.html#math-support 
.. todo::

    http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter# 
.. todo::

    http://www.sphinx-doc.org/en/stable/markup/index.html 

text
~~~~
styles
italics
~~~~~~~
bold
~~~~
fixed-space
~~~~~~~~~~~
or mono-space
paragraph
~~~~~~~~~

.. code-block:: R



    p[([] 1 2 2 3)] 

subscript
~~~~~~~~~

.. code-block:: R



    "H",sub["2"],"O" 

superscript
~~~~~~~~~~~

.. code-block:: R



    "E = mc",sup["2"] 

list
~~~~
bullet
~~~~~~
list

.. code-block:: R



    bl string`trade`price 

number
~~~~~~
list

.. code-block:: R



    nl string`trade`price 

literal
~~~~~~~
block

.. code-block:: R



    lb string`trade`price 

doctest
~~~~~~~
block - evaluate the block

.. todo::

    protect the execution  

.. code-block:: R



    dtb ("{x*y}[3;2]") 

underline
~~~~~~~~~
the text with input charecter

.. code-block:: R



    ul["SubTitle";"-"] 

Title
~~~~~

.. code-block:: R



    t["Title"] 

Section
~~~~~~~
Title

.. code-block:: R



    st["SubTitle"] 

Subsection
~~~~~~~~~~
Title

.. code-block:: R



    sst["Subsection Title"] 

overline-underline
~~~~~~~~~~~~~~~~~~
the text with input charecter

.. code-block:: R



    olul["Overline-Underline";"-"] 

Document
~~~~~~~~
Title

.. code-block:: R



    dt["Document Title"] 

Document
~~~~~~~~
Subtitle

.. code-block:: R



    dst["Document Subtitle"] 

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

label
~~~~~

.. code-block:: R



    lbl[`trade`schema] 

reference
~~~~~~~~~

.. code-block:: R



    ref[`trade`schema] 

field
~~~~~
list

.. code-block:: R



    fn[fnl:`param`sym;"Instrument Id"] 
.. code-block:: R



    fn[fnl:`returns;"Price"] 

field
~~~~~
list param

.. code-block:: R



    prm[fnl:`sym;"Instrument Id"] 

field
~~~~~
list ret

.. code-block:: R



    ret[fnl:`p;"Price"] 
.. code-block:: R



    ret[fnl:`;"Price"] 

include
~~~~~~~

.. code-block:: R



    inc["resources/inclusion.txt"] 

multiline
~~~~~~~~~
code

.. code-block:: R



    ml["test"] 
.. code-block:: R



    ml[("test1";"test2")] 

ind
~~~
indent the content

.. code-block:: R



    ind[4;"1"] 

code
~~~~

.. code-block:: R



    code[l:`R;e:"";fn:`sample.q;c:("show avg[2 3 4]";"count til 5")] 
.. code-block:: R



    code2[c:("show avg[2 3 4]";"count til 5")] 

split
~~~~~

.. code-block:: R



    split["-";"test-string"] 

Substitutions
~~~~~~~~~~~~~

.. code-block:: R



    img[`$"resources/images/docq.png"] 

Substitutions
~~~~~~~~~~~~~
Warn

.. code-block:: R



    wrnImg[] 

Substitutions
~~~~~~~~~~~~~
Tip

.. code-block:: R



    tipImg[] 
.. code-block:: R



    toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]] 

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

index
~~~~~

.. code-block:: R



    idx[ ("schema";"trade")] 

.. todo::

    test code 




.. todo::

    Simplify the csv logic 

.. code-block:: R



    \l sp.q 
.. code-block:: R



    csvt p 
.. code-block:: R



    strif each (`str;12.;1b) 

simple
~~~~~~
table

.. todo::

    need to revisit this function 

.. code-block:: R



    \l sp.q 
.. code-block:: R



    tab[p]  

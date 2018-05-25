
.. index:: lib;str


.. _lib-str-label:

===
str
===

String helper functions - fc,sfl,zfl,tu,tl,tstr,cc,ucc,us (snakecase, startcase, traincase )

.. _lib-str-stc-label:


stc
~~~

startcase "an example string" -> "An Example String"

:param string: 

.. code-block:: R



    stc"startcase test"

.. _lib-str-sc-label:


sc
~~

Snakecase : underscore separated text , but the case is preserverd

:param string: 

:returns: underscore separated text without any case changes.

.. _lib-str-tc-label:


tc
~~

Traincase : hyphen separated text , but the case is preserverd

:param string: 

:returns: hyphen separated text without any case changes.

.. _lib-str-us-label:


us
~~

Camel case to lower case underscore separated

:param x: string in camel case form

:returns: underscore separated text

.. _lib-str-cc-label:


cc
~~

To camel case

:param String: containing underscores, hyphens or spaces

:returns: Camel case string

.. _lib-str-ucc-label:


ucc
~~~

Uncamelcase - Camel case to space separated text

:param String: Camel case string

:returns: Space separated string

.. _lib-str-fc-label:


fc
~~

Swap case

:param String: 

:returns: String with case swapped

.. _lib-str-sfl-label:


sfl
~~~

Space fill

:param int: 
:param String: 

:returns: String left padded with space

.. _lib-str-sfr-label:


sfr
~~~

Space fill from right

:param int: 
:param String: 

:returns: String right padded with space

.. _lib-str-sflb-label:


sflb
~~~~

Space fill from left for list of strings

:param int: 
:param String: 

:returns: String left padded with space

.. _lib-str-sfrb-label:


sfrb
~~~~

Space fill from right for list of strings

:param int: 
:param String: 

:returns: String right padded with space

.. _lib-str-zfl-label:


zfl
~~~

zero fill

:param int: 
:param String: 

:returns: String left padded with zero

.. _lib-str-zfr-label:


zfr
~~~

zero fill from right

:param int: 
:param String: 

:returns: String right padded with zero

.. _lib-str-tstr-label:


tstr
~~~~

to string
Convert the nested structures to string using -3!

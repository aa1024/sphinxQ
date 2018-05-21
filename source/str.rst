
.. index:: lib

===
str
===

String helper functions - fc,sfl,zfl,tu,tl,tstr,cc,ucc,us (snakecase, startcase, traincase )

stc
~~~
startcase "an example string" -> "An Example String"

    :param string: 

.. code-block:: R
    :linenos:



    stc"startcase test"

sc
~~

Snakecase : underscore separated text , but the case is preserverd

    :param string: 

    :returns: underscore separated text without any case changes.

tc
~~

Traincase : hyphen separated text , but the case is preserverd

    :param string: 

    :returns: hyphen separated text without any case changes.

us
~~

Camel case to lower case underscore separated

    :param x: string in camel case form

    :returns: underscore separated text

cc
~~

To camel case

    :param String: containing underscores, hyphens or spaces

    :returns: Camel case string

ucc
~~~

Uncamelcase - Camel case to space separated text

    :param String: Camel case string

    :returns: Space separated string

fc
~~

Swap case

    :param String: 

    :returns: String with case swapped

sfl
~~~

Space fill

    :param int: 
    :param String: 

    :returns: String left padded with space

sfr
~~~

Space fill from right

    :param int: 
    :param String: 

    :returns: String right padded with space

sflb
~~~~

Space fill from left for list of strings

    :param int: 
    :param String: 

    :returns: String left padded with space

sfrb
~~~~

Space fill from right for list of strings

    :param int: 
    :param String: 

    :returns: String right padded with space

zfl
~~~

zero fill

    :param int: 
    :param String: 

    :returns: String left padded with zero

zfr
~~~

zero fill from right

    :param int: 
    :param String: 

    :returns: String right padded with zero

tstr
~~~~

to string
Convert the nested structures to string using -3!

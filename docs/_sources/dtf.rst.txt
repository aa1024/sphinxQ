
.. _lib-dtf-label:

===
dtf
===

Datetime Formatter

.. index:: lib;dtf


[excel format](https://support.office.com/en-us/article/format-a-date-the-way-you-want-8e10019e-d5d8-47a1-ba95-db95123d273e)

.. _lib-dtf-format-label:


format
~~~~~~

Format the date as per the given date format

:param f: Date formatter e.g. "dd-mm-yyyy"
:param dt: Date to be formatted

:returns: Formatted date

.. code-block:: R



    q)format[fmt:"d/m/yyyy"; dt:2018.06.08]
.. code-block:: R



    q)format["d mmmm, dddd ,yyyy"; 2018.06.18]
.. code-block:: R



    q).dtf.format[fmt:"yy-mm-dd hh:uu:ss.000"; 2018.06.08T01:02:03.456]
.. code-block:: R



    q)do[1000;format[fmt:"yy-mm-dd hh:uu:ss.000 AM/PM"; dt:2018.06.08T21:02:03.456]]

.. _lib-dtf-m-label:


m
~

Returns Months as 1-12

:param x: Date to be formatted

:returns: PMnth

.. code-block:: R



    q)m[2018.06.08]

.. _lib-dtf-mm-label:


mm
~~

Returns Months as 1-12

:param x: Date to be formatted

:returns: month

.. code-block:: R



    q)mm[2018.06.08]

.. _lib-dtf-mmm-label:


mmm
~~~

Months as Jan-Dec

:param x: Date to be formatted

:returns: month

.. code-block:: R



    q)mmm[2018.06.08]

.. _lib-dtf-mmmm-label:


mmmm
~~~~

Months as January-December

:param x: Date to be formatted

:returns: month

.. code-block:: R



    q)mmmm[2018.06.08]

.. _lib-dtf-mmmmm-label:


mmmmm
~~~~~

Months as the first letter of the month

:param x: Date to be formatted

:returns: month

.. code-block:: R



    q)mmmmm[2018.06.08]

.. _lib-dtf-d-label:


d
~

Days as 1-31

:param x: Date to be formatted

:returns: Date

.. code-block:: R



    q)d[2018.06.08]

.. _lib-dtf-dd-label:


dd
~~

Days as 01-31

:param x: Date to be formatted

:returns: Date

.. code-block:: R



    q)dd[2018.06.08]

.. _lib-dtf-ddddd-label:


ddddd
~~~~~

To get Days as Sunday-Saturday

:param x: Date to be formatted

:returns: Day of the week

.. code-block:: R



    q)system"W 4"; dddd[2018.06.08]; system"W 2"
.. code-block:: R



    q)system"W 0"; dddd[2018.06.08]; system"W 2"

.. _lib-dtf-ddddd-label:


ddddd
~~~~~

To get Days as Sun-Sat

:param x: Date to be formatted

:returns: Day of the week

.. code-block:: R



    q)system"W 4"; ddd[2018.06.08]; system"W 2"
.. code-block:: R



    q)system"W 0"; ddd[2018.06.08]; system"W 2"

.. _lib-dtf-m-label:


m
~

To get Years as 1900-2099

:param x: Date to be formatted

:returns: year

.. code-block:: R



    q)yyyy[2018.06.08]

.. _lib-dtf-m-label:


m
~

To get Years as 00-99

:param x: Date to be formatted

:returns: year

.. code-block:: R



    q)yy[2018.06.08]

.. _lib-dtf-h-label:


h
~

To get Hours as 0-23

:param x: Date to be formatted

:returns: Hours

.. code-block:: R



    q)h 01:05:21

.. _lib-dtf-hh-label:


hh
~~

To get Hours as 00-23

:param x: Date to be formatted

:returns: Hours

.. code-block:: R



    q)hh 01:05:21

.. _lib-dtf-h1-label:


h1
~~

To get Hours as 1-12

:param x: Date to be formatted

:returns: Hours

.. code-block:: R



    q)h1 01:05:21
.. code-block:: R



    q)h1 21:05:21

.. _lib-dtf-hh1-label:


hh1
~~~

To get Hours as 01-12

:param x: Date to be formatted

:returns: Hours

.. code-block:: R



    q)hh1 01:05:21
.. code-block:: R



    q)hh1 21:05:21

.. _lib-dtf-u-label:


u
~

To get Minutes as 0-59

:param x: Date to be formatted

:returns: Minutes

.. code-block:: R



    q)u x:21:05:21.123

.. _lib-dtf-uu-label:


uu
~~

To get Minutes as 00-59

:param x: Date to be formatted

:returns: Minutes

.. code-block:: R



    q)uu 01:05:21

.. _lib-dtf-s-label:


s
~

To get Seconds as 0-59

:param x: Date to be formatted

:returns: seconds

.. code-block:: R



    q)s x:01:05:21

.. _lib-dtf-ss1-label:


ss1
~~~

To get Seconds as 00-59

:param x: Date to be formatted

:returns: seconds

.. code-block:: R



    q)ss1 01:05:21

.. _lib-dtf-ampm0-label:


ampm0
~~~~~

To get Time as 4 AM

:param x: Date to be formatted

:returns: AM/PM

.. code-block:: R



    q)ampm0[21:05:21]

.. _lib-dtf-ap0-label:


ap0
~~~

To get Time as 4 A

:param x: Date to be formatted

:returns: A/P

.. code-block:: R



    q)ap0[21:05:21]

.. _lib-dtf-ampm-label:


ampm
~~~~

To get Time as 4 am

:param x: Date to be formatted

:returns: am/pm

.. code-block:: R



    q)ampm[21:05:21]

.. _lib-dtf-ap-label:


ap
~~

To get Time as 4 a (a/p)

:param x: Date to be formatted

:returns: a/p

.. code-block:: R



    q)ap[21:05:21]

.. _lib-dtf-ms3-label:


ms3
~~~

To get 3 digits millisecond precision

:param x: Date to be formatted

:returns: milliseconds

.. code-block:: R



    q)ms3[x:21:05:21.123]

.. _lib-dtf-ms2-label:


ms2
~~~

To get 2 digits millisecond precision

:param x: Date to be formatted

:returns: milliseconds

.. code-block:: R



    q)ms2[x:21:05:21.123]

.. _lib-dtf-ms1-label:


ms1
~~~

To get 1 digit millisecond precision

:param x: Date to be formatted

:returns: millisecond

.. code-block:: R



    q)ms1[x:21:05:21.123]


.. _example-sample-label:

======
sample
======

Sample functions to demostrate the usage of tags for document generation

.. index:: example;sample


.. _example-sample-foo-label:


foo
~~~

A sample function to generate an inline table for input parameter dictionary

:param dict: Input Parameter Dictionary

:returns: void

Param details


.. csv-table:: 
   :escape: '
   :delim: |
   :widths: auto
   :header: Key,Type,Required,Default,Desc


   startDate|date|0b|.z.d|Start Date (if null or not provided, will be set as current date)
   endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)

show the input on console

.. _example-sample-bar-label:


bar
~~~

A sample function to display a KDB table in various ways

.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. csv-table:: 
       :escape: '
       :widths: auto
       :header: d,p
    
       2018.06.06,10.3
       2018.06.01,10.8
       2018.05.31,10.1
       2018.06.07,10.6
       2018.06.04,10.3
.. container:: toggle

    .. container:: header

        **show/hide**
    
    
    .. code-block:: R
    
    
    
        d          p   
        ---------------
        2018.06.06 10.5
        2018.06.04 10.1
        2018.06.02 10.2
        2018.06.08 10.4
        2018.06.04 10.1
        
    

.. code-block:: R



    d          p   
    ---------------
    2018.06.05 10.5
    2018.06.04 10.2
    2018.06.04 10.7
    2018.06.03 10.7
    2018.05.31 10.2
    


.. code-block:: R



    show dict

**See** :ref:`lib-str-label`

.. _example-sample-foobar-label:


foobar
~~~~~~

Another sample function

:param x: Input Parameter x
:param y: Input Parameter y

:returns: int sum of x & y

.. container:: toggle

    .. container:: header

        **show/hide**
    
    Calculate
    the
    sum

.. todo::

    Change the function name?

.. error::

    Throws an error when input is not numerical
.. error::

    Error in processing the tag : @code-eval("string1")

.. code-block:: R



     func2[2;3] = 5

.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. code-block:: R
    
    
    
        (x+y)

.. _example-sample-tab-label:


tab
~~~

Stores the trades


.. csv-table:: 
   :escape: '
   :delim: |
   :widths: auto
   :header: Column Name,Type,Desc


   d |date |Trade Date
   t |time |Trade Time
   s |symbol|Instrument
   pr|float |Trade Price
   sz|float |Trade Size

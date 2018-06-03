
.. _example-sample-label:

======
sample
======

Group of sample function for document generation

.. index:: example;sample


.. _example-sample-func1-label:


func1
~~~~~

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

.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. csv-table:: 
       :escape: '
       :widths: auto
       :header: d,p
    
       2018.05.30,10
       2018.05.25,10.4
       2018.05.26,10.5
       2018.06.03,10.8
       2018.05.31,10
.. container:: toggle

    .. container:: header

        **show/hide**
    
    
    .. code-block:: R
    
    
    
        d          p   
        ---------------
        2018.05.28 10.9
        2018.05.26 10.9
        2018.06.03 10  
        2018.05.25 10.6
        2018.05.29 10.2
        
    

.. code-block:: R



    d          p   
    ---------------
    2018.05.27 10.1
    2018.05.30 10.5
    2018.05.27 10  
    2018.05.27 10.2
    2018.06.03 10.3
    


.. code-block:: R



    show dict

**See** :ref:`lib-str-label`

.. _example-sample-func2-label:


func2
~~~~~

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

    Change the function implementation

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

.. _example-sample-trade-label:


trade
~~~~~

Stores the Trade details


.. csv-table:: 
   :escape: '
   :delim: |
   :widths: auto
   :header: Column Name,Type,Desc


   date|date|Trade Date
   time|time|Trade Time
   sym|symbol|Instrument Id
   price|float|Trade Price
   size|float|Trade Size
   side|symbol|Trade Direction

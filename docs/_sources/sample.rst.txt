
.. _example-Sample-label:

======
Sample
======

Group of sample function for document generation

.. index:: example;Sample


.. _example-Sample-func1-label:


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
    
       2018.05.25,10.5
       2018.05.23,10.7
       2018.05.24,10.5
       2018.05.17,10.6
       2018.05.24,10.7
.. container:: toggle

    .. container:: header

        **show/hide**
    
    
    .. code-block:: R
    
    
    
        d          p   
        ---------------
        2018.05.17 10  
        2018.05.23 10.7
        2018.05.22 10.3
        2018.05.17 10.3
        2018.05.16 10.6
        
    

.. code-block:: R



    d          p   
    ---------------
    2018.05.16 10  
    2018.05.18 10.1
    2018.05.17 10.1
    2018.05.21 10.9
    2018.05.22 10.6
    


.. code-block:: R



    show dict

.. _example-Sample-func2-label:


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

.. code-block:: R



     func2[2;3] = 5

.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. code-block:: R
    
    
    
        (x+y)

.. _example-Sample-trade-label:


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

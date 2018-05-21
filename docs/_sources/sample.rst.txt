

.. _example-Sample-label:

======
Sample
======
Group of sample function for document generation

.. index:: example


.. _example-Sample-func1-label:


func1
~~~~~
A sample function to generate
an inline table for input parameter dictionary

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

.. code-block:: R



    show dict


.. _example-Sample-func2-label:


func2
~~~~~
Another sample function

    :param x: Input Parameter x
    :param y: Input Parameter y

    :returns: int sum of x & y

.. code-block:: R



     " func2[2;3] = 5"


.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. code-block:: R
    
    
    
        (x 
         +y)


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

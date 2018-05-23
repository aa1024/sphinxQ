
.. _example-Sample-label:

======
Sample
======
Group of sample function for document generation

.. index:: example;Sample


.. _example-Sample-func1-label:


func1
~~~~~
A sample function to generate
an inline table for input parameter dictionary

:param dict: Input Parameter Dictionary
:returns: 

Param details


.. csv-table:: 
   :escape: '
   :delim: |
   :widths: auto
   :header: Key,Type,Required,Default,Desc

   startDate|date|0b|.z.d|Start Date (if null or not provided, will be set as current date)


.. code-block:: R



    show dict

.. todo::

    Change the function implementation

* Change the function implementation

.. container:: toggle

    .. container:: header

        **show/hide**
    
    Calculate the sum


.. code-block:: R



    show dict


.. code-block:: R



    a
    -
    1
    2
    3
    4
    

.. csv-table:: 
   :escape: '
   :widths: auto
   :header: a

   1
   2
   3
   4


+(,`a)!,1 2 3 4


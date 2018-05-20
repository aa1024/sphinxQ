
======
Sample
======
Group of sample function for document generation

.. index:: example 

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


   startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date) 
   endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)

show input

func2
~~~~~
Another sample function

    :param x: Input Parameter x
    :param y: Input Parameter y

    :returns sum of x & y: 

.. container:: toggle

    .. container:: header

        **show/hide**
    
    .. code-block:: R

        (x+y)
        (x+y)


.. container:: toggle

    .. container:: header

        **Show/Hide code**

    .. code-block:: R
       :linenos:

       show sums -5?100
       ...


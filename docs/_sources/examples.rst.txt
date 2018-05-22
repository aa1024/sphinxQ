.. _docq-sample-label:

====================
Sphinx-ReST Examples
====================
-----------------
Document Subtitle
-----------------

.. index:: example;Sphinx-ReST

.. include:: resources/inclusion.txt


Toggle Code
===========

Click **Show/Hide code** to toggle the contents.

.. container:: toggle

    .. container:: header

        **Show/Hide code**

    .. code-block:: R
       :linenos:

       show sums -5?100
       ...

Toggle Example
==============

.. container:: toggle

    .. container:: header

        **Show/Hide content**

    A sample with paragraph, *italics*, **bold** and ``mono-space`` text style examples.

    Subscript H\ :sub:`2`\O and Superscript E=mc\ :sup:`2`\  examples.

Test Styles
===========

A sample with paragraph, *italics*, **bold** and ``mono-space`` text style examples.

Subscript H\ :sub:`2`\O and Superscript E=mc\ :sup:`2`\  examples.

Code Block
==========

.. code-block:: R
    :emphasize-lines: 2-3
    :caption: sample.q

    sampleFunctParamDict:{[paramDict]
      show avg[2 3 4];
      count til 5;    }

Cross-referencing
=================

Link to :ref:`trade-schema-label`

Lists
=====

Bullet List
-----------

Bullet List with *
~~~~~~~~~~~~~~~~~~

* Bullet 1
* Bulltet 2

Bullet List with -
~~~~~~~~~~~~~~~~~~

- Bullet 1
- Bulltet 2

Enumerated List
===============

#. Item 1
#. Item 2

Tables
======

Simple Table
------------

===== ==================================================================================================================================================================================================
func  def                                                                                                                                                                                               
===== ==================================================================================================================================================================================================
sub   {"\\ :sub:`",x,"`\\"}                                                                                                                                                                             
sup   {"\\ :sup:`",x,"`\\ "}                                                                                                                                                                            
l     {y,/:x}                                                                                                                                                                                           
===== ==================================================================================================================================================================================================

csv Table
---------

.. csv-table:: 
   :escape: '
   :widths: auto
   :header: func,def

   sub,"{'"\\ :sub:`'",x,'"`\\'"}"
   sup,"{'"\\ :sup:`'",x,'"`\\ '"}"
   l,"{y,/:x}"


Tables
======


.. warning::

   Some warning!     

.. error::

   Some error!  

.. tip::

   Some tip!  

.. important:: There must be a space between the link text and the opening \< for the URL.

       

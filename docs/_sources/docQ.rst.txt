
.. _lib-docq-label:

====
docq
====

Function Library for processing the docQ tags and generating the ReST style documents.

.. index:: lib;docq


.. _lib-docq-Tags-label:


Tags
~~~~

Following are the tags currently supported by this library

.. code-block:: R



    tags    
    --------
    table   
    desc    
    header  
    row     
    function
    param   
    return  
    package 
    alias   
    error   
    code    
    see     
    name    
    todo    
    version 
    tags    
    schema  
    desc    
    toggle  
    bullet  
    ..
    


.. todo::

    in case of schema add an extra index of schema

.. _lib-docq-parseFile-label:


parseFile
~~~~~~~~~

Steps how a file will be proceesed

* Read the comments containing the tokens
* Extract only the comment part
* Assign `desc` tag explicitly to the lines which are not multiline comment and does not have any tag
* add an extra space at the end of each comment and then raze the whole list to a simple string.
* Tokenise the string by tags
* Get meta information that will be used in creating the labels and indexing
* Start processing each tag

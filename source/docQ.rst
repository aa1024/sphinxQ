.. _docq-sample-label:

==============
Document Title
==============
-----------------
Document Subtitle
-----------------

.. include:: resources/inclusion.txt



.. warning::

    Some Info

.. attention::

   Some attention!  

.. error::

   Some error!  

.. tip::

   Some tip!  

.. caution::

   Some caution!  

.. danger::

   Some danger!  

.. hint::

   Some hint!  


.. important:: There must be a space between the link text and the opening \< for the URL.

        


Toggle Example
==============

Click **Show/Hide contents** to toggle the contents.

.. container:: toggle

    .. container:: header

        **Show/Hide content**

    A sample with paragraph, *italics*, **bold** and ``mono-space`` text style examples.

    Subscript H\ :sub:`2`\O and Superscript E=mc\ :sup:`2`\  examples.


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


.. code-block:: R



    show avg[2 3 4]
    count til 5

.. image:: resources/images/docq.png

.. container:: toggle

    .. container:: header

        **show/hide code**
    .. code-block:: j
        :emphasize-lines: 2
    
    
        show avg[2 3 4]
        count til 5


Cross-referencing
=================

Link to :ref:`trade-schema-label`

Link to :ref:`price-schema-label`

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
ts    {y,x,y}                                                                                                                                                                                           
i     {ts[x;"*"]}                                                                                                                                                                                       
b     {ts[x;"**"]}                                                                                                                                                                                      
fs    {ts[x;"``"]}                                                                                                                                                                                      
p     {x}                                                                                                                                                                                               
sub   {"\\ :sub:`",x,"`\\"}                                                                                                                                                                             
sup   {"\\ :sup:`",x,"`\\ "}                                                                                                                                                                            
l     {y,/:x}                                                                                                                                                                                           
bl    {l[x;"* "]}                                                                                                                                                                                       
nl    {l[x;"#. "]}                                                                                                                                                                                      
lb    {("::";""),"  ",/:x}                                                                                                                                                                              
dtb   {eval parse x}                                                                                                                                                                                    
tab   {r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r];h:.[count[r 0]#"=";enlist where 1_1=deltas " "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }                                                         
ul    {(x;count[x]#y)}                                                                                                                                                                                  
t     {ul[x;"="]}                                                                                                                                                                                       
st    {ul[x;"-"]}                                                                                                                                                                                       
sst   {ul[x;"~"]}                                                                                                                                                                                       
olul  {(t;x;t:count[x]#y)}                                                                                                                                                                              
dt    {olul[x;"="]}                                                                                                                                                                                     
dst   {olul[x;"-"]}                                                                                                                                                                                     
img   {".. image:: ",x}                                                                                                                                                                                 
wrn   {img["images/warning.gif"]}                                                                                                                                                                       
tip   {img["images/tip.gif"]}                                                                                                                                                                           
strif {$[10h=t:type x; x;t<0;string x;s, ssr[ssr[.Q.s1[x];"'";"''"];"\"";"'\""],s:"\""]}                                                                                                                
csvt  {( ".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: ",","sv string cols x;""),{"   ","," sv strif each value x} each x:0!x}                                                      
lbl   {".. _",sv["-";string x],"-label:"}                                                                                                                                                               
ref   {" :","ref",":`",sv["-";string x],"-label`"}                                                                                                                                                      
fn    {[fnl;fc] "    :",sv[" ";string (),fnl],": ",fc}                                                                                                                                                  
inc   {".. include:: ",x}                                                                                                                                                                               
code  {[l;e;fn;c]   r:".. ","code","-block",":: ",string l;r,:"\n";   if[ not e~"" ;r,:("    :emphasize-lines: ",e);r,:"\n"];   if[not null fn;r,:"    :caption: ",string[fn];r,:"\n"];   r,("\n",c)   }
===== ==================================================================================================================================================================================================

csv Table
---------

.. csv-table:: 
   :escape: '
   :widths: auto
   :header: func,def

   ts,"{y,x,y}"
   i,"{ts[x;'"*'"]}"
   b,"{ts[x;'"**'"]}"
   fs,"{ts[x;'"``'"]}"
   p,"{x}"
   sub,"{'"\\ :sub:`'",x,'"`\\'"}"
   sup,"{'"\\ :sup:`'",x,'"`\\ '"}"
   l,"{y,/:x}"
   bl,"{l[x;'"* '"]}"
   nl,"{l[x;'"#. '"]}"
   lb,"{('"::'";'"'"),'"  '",/:x}"
   dtb,"{eval parse x}"
   tab,"{r:.Q.S[value['"\\C'"];0;0!x];if['"..'"~last r;r:-1_r];h:.[count[r 0]#'"='";enlist where 1_1=deltas '" '"<>r 0;:;'" '"];(h;r[0];h),(2_r),enlist h }"
   ul,"{(x;count[x]#y)}"
   t,"{ul[x;'"='"]}"
   st,"{ul[x;'"-'"]}"
   sst,"{ul[x;'"~'"]}"
   olul,"{(t;x;t:count[x]#y)}"
   dt,"{olul[x;'"='"]}"
   dst,"{olul[x;'"-'"]}"
   img,"{'".. image:: '",x}"
   wrn,"{img['"images/warning.gif'"]}"
   tip,"{img['"images/tip.gif'"]}"
   strif,"{$[10h=t:type x; x;t<0;string x;s, ssr[ssr[.Q.s1[x];'"'''";'"'''''"];'"\'"'";'"''\'"'"],s:'"\'"'"]}"
   csvt,"{( '".. csv-table:: '";'"   :escape: '''";'"   :widths: auto'";'"   :header: '",'",'"sv string cols x;'"'"),{'"   '",'",'" sv strif each value x} each x:0!x}"
   lbl,"{'".. _'",sv['"-'";string x],'"-label:'"}"
   ref,"{'" :'",'"ref'",'":`'",sv['"-'";string x],'"-label`'"}"
   fn,"{[fnl;fc] '"    :'",sv['" '";string (),fnl],'": '",fc}"
   inc,"{'".. include:: '",x}"
   code,"{[l;e;fn;c]   r:'".. '",'"code'",'"-block'",'":: '",string l;r,:'"\n'";   if[ not e~'"'" ;r,:('"    :emphasize-lines: '",e);r,:'"\n'"];   if[not null fn;r,:'"    :caption: '",string[fn];r,:'"\n'"];   r,('"\n'",c)   }"

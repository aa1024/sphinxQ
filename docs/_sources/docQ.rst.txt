==============
Document Title
==============
-----------------
Document Subtitle
-----------------

Test Styles
===========

A sample with paragraph, *italics*, **bold** and ``mono-space`` text style examples.

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

==== =========================================================================================================================================
func def                                                                                                                                      
==== =========================================================================================================================================
ts   {y,x,y}                                                                                                                                  
i    {ts[x;"*"]}                                                                                                                              
b    {ts[x;"**"]}                                                                                                                             
fs   {ts[x;"``"]}                                                                                                                             
p    {x}                                                                                                                                      
bl   {l[x;"* "]}                                                                                                                              
nl   {l[x;"#. "]}                                                                                                                             
lb   {("::";""),"  ",/:x}                                                                                                                     
dtb  {eval parse x}                                                                                                                           
tab  {r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r];h:.[count[r 0]#"=";enlist where 1_1=deltas " "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
ul   {(x;count[x]#y)}                                                                                                                         
t    {ul[x;"="]}                                                                                                                              
st   {ul[x;"-"]}                                                                                                                              
img  {".. image:: ",x}                                                                                                                        
wrn  {img["images/warning.gif"]}                                                                                                              
tip  {img["images/tip.gif"]}                                                                                                                  
sst  {ul[x;"~"]}                                                                                                                              
olul {(t;x;t:count[x]#y)}                                                                                                                     
dt   {olul[x;"="]}                                                                                                                            
dst  {olul[x;"-"]}                                                                                                                            
l    {y,/:x}                                                                                                                                  
==== =========================================================================================================================================

/# @package test
/# @name sphinx-tests sphinx helper functions tests.


import `sphinx`unittest;

.unittest.init[];

.sphinx.reset[];

/# @bullet 
.unittest.assert[`.rest.ts; ("italics";"*") ;"*italics*"];


.unittest.assert[`.sphinx.processTag ;enlist (string .sphinx.getTag"code-eval";enlist "\"";"func2[2;3]";enlist "=";"\",";"string1";"2+3");(".. error::";"";"    Error in processing the tag : @code-eval(\"string1\")")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (string .sphinx.getTag"see";"lib-str");("";"**See** :ref:`lib-str-label`")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@code ([] a: 1 2 3 4)") ; ("";".. code-block:: R";"";"";"";"    ([] a: 1 2 3 4)")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@eval ([] a: 1 2 3 4)"); enlist "+(,`a)!,1 2 3 4"];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@text-eval ([] a: 1 2 3 4)");enlist ",\"+(,`a)!,1 2 3 4\""];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@code-eval ([] a: 1 2 3 4)");("";".. code-block:: R";"";"";"";"    a";"    -";"    1";"    2";"    3";"    4";"    ";"")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@table-eval ([] a: 1 2 3 4)");(".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: a";"";"   1";"   2";"   3";"   4")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@eval {([] a: 1 2 3 4)}[]"); enlist "+(,`a)!,1 2 3 4"];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@text-eval {([] a: 1 2 3 4)}[]");enlist ",\"+(,`a)!,1 2 3 4\""];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@code-eval {([] a: 1 2 3 4)}[]");("";".. code-block:: R";"";"";"";"    a";"    -";"    1";"    2";"    3";"    4";"    ";"")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@table-eval {([] a: 1 2 3 4)}[]");(".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: a";"";"   1";"   2";"   3";"   4")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@table-eval {h:hopen 1234; t1:h\"2#t\";hclose h; :t1}[]");(".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: a";"";"   1";"   2")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist (" " vs "@code-eval {h:hopen 1234; t1:h\"3#t\";hclose h; :t1}[]");("";".. code-block:: R";"";"";"";"    a";"    -";"    1";"    2";"    3";"    ";"")];


.sphinx.reset[];
.unittest.assert[`.sphinx.processTag; enlist  ("@eval"; "([]";"a:(1;2;3;4))");enlist "+(,`a)!,1 2 3 4"];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag; enlist ( "@code-eval"; "([]";"a:(1;2;3;4))");("";".. code-block:: R";"";"";"";"    a";"    -";"    1";"    2";"    3";"    4";"    ";"")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ; enlist  ("@table-eval"; "([]";"a:(1;2;3;4))");(".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: a";"";"   1";"   2";"   3";"   4")];

.sphinx.reset[];
.unittest.assert[`.sphinx.processTag ;enlist ("@row"; "startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)");("";"   startDate|date|0b|.z.d|Start Date (if null or not provided, will be set as current date)") ]; 

.unittest.assert[`.sphinx.name;(("Sample";"Group";"of";"sample";"function";"for";"document";"generation"); .sphinx.getTag`name );("";".. _misc-getthefilenameasdefault-label:";"";"======";"Sample";"======";"";"Group of sample function for document generation")];

.unittest.assert[`.sphinx.package;( enlist "example"; .sphinx.getTag`package);("";".. index:: misc;getthefilenameasdefault";"")];

.unittest.assert[`.sphinx.function[("func1";enlist "A";"sample";"function";"to";"generate";"/#.";"an";"inline";"table";"for";"input";"parameter";"dictionary"); .sphinx.getTag`function] 
("";".. _misc-getthefilenameasdefault-func1-label:";"";"";"func1";"~~~~~";"";"A sample function to generate an inline table for input parameter dictionary")

.unittest.assert[`.sphinx.param[("dict";"Input";"Parameter";"Dictionary"); .sphinx.getTag`param]
("";":param dict: Input Parameter Dictionary")

.unittest.assert[`.sphinx.return[enlist ""; .sphinx.getTag`return] 
("";":returns: ")

.unittest.assert[`.sphinx.descr [("Param";"details"); .sphinx.getTag`desc] 
("";"Param details")

.unittest.assert[`.sphinx.header[enlist "Key|Type|Required|Default|Desc"; .sphinx.getTag`header]
("";"";".. csv-table:: ";"   :escape: '";"   :delim: |";"   :widths: auto";"   :header: Key,Type,Required,Default,Desc";"")

.unittest.assert[`.sphinx.row[("startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)");.sphinx.getTag`row] 
("";"   startDate|date|0b|.z.d|Start Date (if null or not provided, will be set as current date)")

.unittest.assert[`.sphinx.code[d:("show";"dict") ;.sphinx.getTag`code]
("";".. code-block:: R";"";"";"";"    show dict")

.unittest.assert[`.sphinx.code[  .sphinx.evalCode[("([]";"a:(1;2;3;4))"); .sphinx.getTag`eval ] ;.sphinx.getTag`code] 
("";".. code-block:: R";"";"";"";"    a";"    -";"    1";"    2";"    3";"    4";"    ";"")


.unittest.assert[`.sphinx.todo[("Change";"the";"function";"implementation") ;.sphinx.getTag`todo]
("";".. todo::";"";"    Change the function implementation")


.unittest.assert[`.sphinx.bullet[("Change";"the";"function";"implementation") ;.sphinx.getTag`bullet]
("";"* Change the function implementation")

.unittest.assert[`.sphinx.toggle[("Calculate";"the";"sum") ;.sphinx.getTag`toggle]
("";".. container:: toggle";"";"    .. container:: header";"";"        **show/hide**";"    ";"    Calculate";"    the";"    sum")

.unittest.assert[`.sphinx.flatten[("Param";"details") ]
"Param details"


.unittest.assert[`.sphinx.evalCode[("([]";"a:(1;2;3;4))");.sphinx.getTag`eval]
([] a:1 2 3 4)

.unittest.assert[`.sphinx.table[([] a: 1 2 3 4);.sphinx.getTag`table]
(".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: a";"";"   1";"   2";"   3";"   4")

.unittest.assert[`.sphinx.see[d:"lib-str";.sphinx.getTag`see]
("";"**See** :ref:`lib-str-label`")


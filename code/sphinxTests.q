/# @package test
/# @name sphinx-tests sphinx helper functions tests.


import `sphinx`unittest;

.unittest.init[];



/# @bullet Text Style test
.unittest.assert[`.rest.ts; ("italics";"*") ;"*italics*"];



 processTag l:(string getTag"code-eval";enlist "\"";"func2[2;3]";enlist "=";"\",";"string1";"2+3")
 processTag l:(string getTag"see";"lib-str")
 .sphinx.processTag l:(" " vs "@code ([] a: 1 2 3 4)")
 .sphinx.processTag l:(" " vs "@eval ([] a: 1 2 3 4)")
 .sphinx.processTag l:(" " vs "@text-eval ([] a: 1 2 3 4)")
 .sphinx.processTag l:(" " vs "@code-eval ([] a: 1 2 3 4)")
 .sphinx.processTag l:(" " vs "@table-eval ([] a: 1 2 3 4)")
 .sphinx.processTag l:(" " vs "@eval {([] a: 1 2 3 4)}[]")
 .sphinx.processTag l:(" " vs "@text-eval {([] a: 1 2 3 4)}[]")
 .sphinx.processTag l:(" " vs "@code-eval {([] a: 1 2 3 4)}[]")
 .sphinx.processTag l:(" " vs "@table-eval {([] a: 1 2 3 4)}[]")
 .sphinx.processTag l:(" " vs "@table-eval {h:hopen 1234; t1:h\"2#t\";hclose h; :t1}[]")
 .sphinx.processTag l:(" " vs "@code-eval {h:hopen 1234; t1:h\"3#t\";hclose h; :t1}[]")


 processTag (getTag"eval"; "([]";"a:(1;2;3;4))")
 processTag (getTag"code-eval"; "([]";"a:(1;2;3;4))")
 processTag (getTag"table-eval"; "([]";"a:(1;2;3;4))")
 processTag l:(getTag"row"; "startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)")

 name[("Sample";"Group";"of";"sample";"function";"for";"document";"generation"); getTag`name] 
 package[enlist "example"; getTag`package] 
 function[("func1";enlist "A";"sample";"function";"to";"generate";"/#.";"an";"inline";"table";"for";"input";"parameter";"dictionary"); getTag`function] 
 param[("dict";"Input";"Parameter";"Dictionary"); getTag`param]
 return[enlist ""; getTag`return] 
 descr [("Param";"details"); getTag`desc] 
 header[enlist "Key|Type|Required|Default|Desc"; getTag`header]
 row[("startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)");getTag`row] 
 code[d:("show";"dict") ;getTag`code]
 code[  evalCode[("([]";"a:(1;2;3;4))");getTag`eval] ;getTag`code]
 todo[("Change";"the";"function";"implementation") ;getTag`todo]
 bullet[("Change";"the";"function";"implementation") ;getTag`bullet]

 toggle[("Calculate";"the";"sum") ;getTag`toggle]
 flatten[("Param";"details") ]

 evalCode[("([]";"a:(1;2;3;4))");getTag`eval]
 table[([] a: 1 2 3 4);getTag`table]
 see[d:"lib-str";getTag`see]

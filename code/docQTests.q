/@desc docQ helper functions tests
/TODO add more tests around functions (string, list of strings etc.)

\d .docQTests

import `str`unittest`docq;

.unittest.init[];

//Italics test
.unittest.assert[`.docq.i; enlist "italics" ;"*italics*"];

//Bold test
.unittest.assert[`.docq.b; enlist "bold" ;"**bold**"];

//Fixed-space/Monospace test
.unittest.assert[`.docq.fs; enlist "mono-space" ;"``mono-space``"];

//paragraph test
.unittest.assert[`.docq.p; enlist "paragraph" ;"paragraph"];

//Subscript test
.unittest.assert[`.docq.sub; enlist "2" ;"\\ :sub:`2`\\"];

//Superscript test
.unittest.assert[`.docq.sup; enlist "2" ;"\\ :sup:`2`\\"];

//Bullet-list test
.unittest.assert[`.docq.bl; enlist ("Bullet 1";"Bullet 2") ;("* Bullet 1";"* Bullet 2")];

//Number-list test
.unittest.assert[`.docq.nl; enlist ("Bullet 1";"Bullet 2") ;("#. Bullet 1";"#. Bullet 2")];

//literal block test
.unittest.assert[`.docq.lb; enlist ("trade";"price") ;("::";"";"  trade";"  price")];

//doctest
.unittest.assert[`.docq.dtb; enlist"{x*y}[3;2]" ;"6\r\n"];


//Space Fill Test
.unittest.assert[`.str.sfl; (3;12);" 12"];
.unittest.assert[`.str.sfr; (3;12);"12 "];

.unittest.assert[`.str.sflb; enlist (`a`bbb`cc);("  a";"bbb";" cc")];
.unittest.assert[`.str.sfrb; enlist (`a`bbb`cc);("a  ";"bbb";"cc ")];

//Zero Fill Test
.unittest.assert[`.str.zfl;(4;72);"0072"];
.unittest.assert[`.str.zfr;(4;72);"7200"];

.unittest.assert[`.str.tu;enlist "To Upper Case";"TO UPPER CASE"];
.unittest.assert[`.str.tu;enlist `Upper;`UPPER];


.unittest.assert[`.str.tl;enlist "To Lower Case"; "to lower case"];
.unittest.assert[`.str.tl;enlist `Lower;`lower];


.unittest.assert[`.str.tstr;enlist`$"String";"String"];
.unittest.assert[`.str.tstr;enlist`$"c";enlist["c"]];
.unittest.assert[`.str.tstr;enlist`s;enlist["s"]];
.unittest.assert[`.str.tstr;enlist 10;"10"];
.unittest.assert[`.str.tstr;enlist(0b;1i;2j;3f;`4;"5");"(0b;1i;2;3f;`4;\"5\")"];
.unittest.assert[`.str.tstr;enlist ([] i: 1 2 3 4);"+(,`i)!,1 2 3 4"];

.unittest.results[]
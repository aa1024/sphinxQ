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

.unittest.results[]
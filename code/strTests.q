/@desc String helper functions tests

\d .strTests

import `str`unittest;

.unittest.init[];

//Snakecase test
.unittest.assert[`.str.sc; enlist "An example of Snake case" ; "An_example_of_Snake_case"];

//Train case test
.unittest.assert[`.str.tc; enlist "An example of Train case" ; "An-example-of-Train-case"];

//Camelcase test
.unittest.assert[`.str.cc; enlist "camel-case_function_TEST" ; "camelCaseFunctionTest"];
.unittest.assert[`.str.cc;enlist "Another Test";"anotherTest"];

//Uncamelcase test
.unittest.assert[`.str.ucc;enlist "addSpaceBetweenCamelCase";"add Space Between Camel Case" ];

//underscore
.unittest.assert[`.str.us;enlist "underscoreSeperatedText";"underscore_seperated_text"];

//swapcase test
.unittest.assert[`.str.fc;enlist "FlipCase";"fLIPcASE"];

//Space Fill Test
.unittest.assert[`.str.sfl; (3;12);" 12"];
.unittest.assert[`.str.sfr; (3;12);"12 "];

.unittest.assert[`.str.sflb; enlist (`a`bbb`cc);("  a";"bbb";" cc")];
.unittest.assert[`.str.sfrb; enlist (`a`bbb`cc);("a  ";"bbb";"cc ")];

//Zero Fill Test
.unittest.assert[`.str.zfl;(4;72);"0072"];
.unittest.assert[`.str.zfr;(4;72);"7200"];


.unittest.assert[`.str.strif;enlist`$"String";"String"];
.unittest.assert[`.str.strif;enlist`$"c";enlist["c"]];
.unittest.assert[`.str.strif;enlist`s;enlist["s"]];
.unittest.assert[`.str.strif;enlist 10;"10"];
.unittest.assert[`.str.strif;enlist(0b;1i;2j;3f;`4;"5");"(0b;1i;2;3f;`4;\"5\")"];
.unittest.assert[`.str.strif;enlist ([] i: 1 2 3 4);"+(,`i)!,1 2 3 4"];

.unittest.results[]
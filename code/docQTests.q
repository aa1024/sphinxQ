/## @package test
/## @name docQ-test docQ helper functions tests.

/## @todo add more tests around functions (symbol, symbol list , string, list of strings etc.)
/## @todo csvth
/## @todo csvtr

\d .docQTests

import `str`unittest`docq;

.unittest.init[];

/## @bullet Text Style test
.unittest.assert[`.docq.ts; ("italics";"*") ;"*italics*"];
/## @bullet Italics test
.unittest.assert[`.docq.i; enlist "italics" ;"*italics*"];
/## @bullet Bold test
.unittest.assert[`.docq.b; enlist "bold" ;"**bold**"];
/## @bullet Fixed-space/Monospace test
.unittest.assert[`.docq.fs; enlist "mono-space" ;"``mono-space``"];
/## @bullet paragraph test
.unittest.assert[`.docq.p; enlist "paragraph" ;"paragraph"];

/## @bullet Subscript test
.unittest.assert[`.docq.sub; enlist "2" ;"\\ :sub:`2`\\"];
/## @bullet Superscript test
.unittest.assert[`.docq.sup;enlist "2" ;"\\ :sup:`2`\\"];

/## @bullet List test
.unittest.assert[`.docq.l; (("Bullet 1";"Bullet 2");"* ") ;("* Bullet 1";"* Bullet 2")];
/## @bullet Bullet-list test
.unittest.assert[`.docq.bl; enlist ("Bullet 1";"Bullet 2") ;("* Bullet 1";"* Bullet 2")];
/## @bullet Number-list test
.unittest.assert[`.docq.nl; enlist ("Bullet 1";"Bullet 2") ;("#. Bullet 1";"#. Bullet 2")];

/## @bullet literal block test
.unittest.assert[`.docq.lb; enlist ("trade";"price") ;("::";"";"  trade";"  price")];

/## @bullet doctest
.unittest.assert[`.docq.dtb; enlist"{x*y}[3;2]" ;"6\r\n"];

/## @bullet underline test
.unittest.assert[`.docq.ul;( "SubTitle";"-");("SubTitle";"--------")];
/## @bullet Title test
.unittest.assert[`.docq.t; enlist "Title"; ("Title";"=====")];
/## @bullet Section Title test
.unittest.assert[`.docq.st;enlist "SubTitle";("SubTitle";"--------")];
/## @bullet Subsection Title test
.unittest.assert[`.docq.sst;enlist "Subsection Title";("Subsection Title";"~~~~~~~~~~~~~~~~")];

/## @bullet overline-underline test
.unittest.assert[`.docq.olul;("Overline-Underline";"-");("------------------";"Overline-Underline";"------------------")];
/## @bullet Document Title test
.unittest.assert[`.docq.dt;enlist "Document Title";("==============";"Document Title";"==============")];
/## @bullet Document Subtitle test
.unittest.assert[`.docq.dst;enlist "Document Subtitle";("-----------------";"Document Subtitle";"-----------------")];


/## @function strif test
.unittest.assert[`.docq.strif;enlist `test;"test"];
.unittest.assert[`.docq.strif;enlist 2#`test;("test";"test")];
.unittest.assert[`.docq.strif;enlist string `test;"test"];
.unittest.assert[`.docq.strif;enlist string 2#`test;"(\"test\";\"test\")"];

.unittest.assert[`.docq.lbl;enlist `trade`schema ; ".. _trade-schema-label:"];
.unittest.assert[`.docq.ref;enlist `trade`schema; " :ref:`trade-schema-label`"];

.unittest.assert[`.docq.fn; (`param`sym;"Instrument Id");"    :param sym: Instrument Id"];
.unittest.assert[`.docq.fn; (`returns;"Price");"    :returns: Price"];
.unittest.assert[`.docq.prm; (`sym;"Instrument Id");"    :param sym: Instrument Id"];
.unittest.assert[`.docq.ret; (`;"Price");"    :returns : Price"];

.unittest.assert[`.docq.inc;enlist "resources/inclusion.txt";".. include:: resources/inclusion.txt"];

.unittest.assert[`.docq.ml;enlist "test";enlist "test"];
.unittest.assert[`.docq.ml;enlist ("test1";"test2");("test1";"test2")];
.unittest.assert[`.docq.ind; (4;"1");"    1"];

.unittest.assert[`.docq.code;(`R;"2";`;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"    :emphasize-lines: 2";"";"";"    show avg[2 3 4]";"    count til 5")];
.unittest.assert[`.docq.code;(`R;"";`sample.q;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"";"    :caption: sample.q";"";"    show avg[2 3 4]";"    count til 5")];


.unittest.assert[`.docq.split; ("-";"test-string");("test";"string")];


/## @bullet Substitutions test
.unittest.assert[`.docq.img;enlist "images/warning.gif";".. image:: images/warning.gif"];
/## @bullet Substitutions warning test
.unittest.assert[`.docq.wrnImg;enlist (::); ".. image:: images/warning.gif"];
/## @bullet Substitutions tip test
.unittest.assert[`.docq.tipImg;enlist (::); ".. image:: images/tip.gif"] ;

/## @todo write more tests
.unittest.assert[`.docq.toggle;( "show/hide code";.docq.code[`j;"2";`;c:("show avg[2 3 4]";"count til 5")] ) ;(".. container:: toggle";"";"    .. container:: header";"";"        **show/hide code**";"    .. code-block:: j";"        :emphasize-lines: 2";"    ";"    ";"        show avg[2 3 4]";"        count til 5")];

.unittest.assert[`.docq.adm;(`warning;"Some warning");(".. warning::";"";"    Some warning")];
.unittest.assert[`.docq.err;enlist "Some error"; (".. error::";"";"    Some error")];
.unittest.assert[`.docq.warn;enlist "Some warning";(".. warning::";"";"    Some warning")];
.unittest.assert[`.docq.tip;enlist "Some tip";(".. tip::";"";"    Some tip")];
.unittest.assert[`.docq.imp;enlist "Some important message"; (".. important::";"";"    Some important message")];

.unittest.assert[`.docq.idx;enlist ("schema";"trade");".. index:: schema;trade"];

.unittest.results[]
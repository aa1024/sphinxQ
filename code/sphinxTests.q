/## @package test
/## @name sphinx-tests sphinx helper functions tests.

/## @todo add more tests around functions (symbol, symbol list , string, list of strings etc.)
/## @todo csvth
/## @todo csvtr

import `str`unittest`sphinx;

.unittest.init[];

/## @bullet Text Style test
.unittest.assert[`.sphinx.ts; ("italics";"*") ;"*italics*"];
/## @bullet Italics test
.unittest.assert[`.sphinx.i; enlist "italics" ;"*italics*"];
/## @bullet Bold test
.unittest.assert[`.sphinx.b; enlist "bold" ;"**bold**"];
/## @bullet Fixed-space/Monospace test
.unittest.assert[`.sphinx.fs; enlist "mono-space" ;"``mono-space``"];
/## @bullet paragraph test
.unittest.assert[`.sphinx.p; enlist "  paragraph  " ;enlist "paragraph"];

/## @bullet Subscript test
.unittest.assert[`.sphinx.sub; enlist "2" ;"\\ :sub:`2`\\"];
/## @bullet Superscript test
.unittest.assert[`.sphinx.sup;enlist "2" ;"\\ :sup:`2`\\"];

/## @bullet List test
.unittest.assert[`.sphinx.l; (("Bullet 1";"Bullet 2");"* ") ;("* Bullet 1";"* Bullet 2")];
/## @bullet Bullet-list test
.unittest.assert[`.sphinx.bl; enlist ("Bullet 1";"Bullet 2") ;("* Bullet 1";"* Bullet 2")];
/## @bullet Number-list test
.unittest.assert[`.sphinx.nl; enlist ("Bullet 1";"Bullet 2") ;("#. Bullet 1";"#. Bullet 2")];

/## @bullet literal block test
.unittest.assert[`.sphinx.lb; enlist ("trade";"price") ;("::";"";"  trade";"  price")];

/## @bullet doctest
.unittest.assert[`.sphinx.dtb; enlist"{x*y}[3;2]" ;"6\r\n"];

/## @bullet underline test
.unittest.assert[`.sphinx.ul;( "SubTitle";"-");("SubTitle";"--------")];
/## @bullet Title test
.unittest.assert[`.sphinx.t; enlist "Title"; ("Title";"=====")];
/## @bullet Section Title test
.unittest.assert[`.sphinx.st;enlist "SubTitle";("SubTitle";"--------")];
/## @bullet Subsection Title test
.unittest.assert[`.sphinx.sst;enlist "Subsection Title";("Subsection Title";"~~~~~~~~~~~~~~~~")];

/## @bullet overline-underline test
.unittest.assert[`.sphinx.olul;("Overline-Underline";"-");("------------------";"Overline-Underline";"------------------")];
/## @bullet Document Title test
.unittest.assert[`.sphinx.dt;enlist "Document Title";("==============";"Document Title";"==============")];
/## @bullet Document Subtitle test
.unittest.assert[`.sphinx.dst;enlist "Document Subtitle";("-----------------";"Document Subtitle";"-----------------")];


/## @function strif test
.unittest.assert[`.sphinx.strif;enlist `test;"test"];
.unittest.assert[`.sphinx.strif;enlist 2#`test;("test";"test")];
.unittest.assert[`.sphinx.strif;enlist string `test;"test"];
.unittest.assert[`.sphinx.strif;enlist string 2#`test;"(\"test\";\"test\")"];

.unittest.assert[`.sphinx.lbl;enlist `trade`schema ; ".. _trade-schema-label:"];
.unittest.assert[`.sphinx.ref;enlist `trade`schema; " :ref:`trade-schema-label`"];

.unittest.assert[`.sphinx.fn; (`param`sym;"Instrument Id");"    :param sym: Instrument Id"];
.unittest.assert[`.sphinx.fn; (`returns;"Price");"    :returns: Price"];
.unittest.assert[`.sphinx.prm; (`sym;"Instrument Id");"    :param sym: Instrument Id"];
.unittest.assert[`.sphinx.ret; (`;"Price");"    :returns: Price"];

.unittest.assert[`.sphinx.inc;enlist "resources/inclusion.txt";".. include:: resources/inclusion.txt"];

.unittest.assert[`.sphinx.ml;enlist "test";enlist "test"];
.unittest.assert[`.sphinx.ml;enlist ("test1";"test2");("test1";"test2")];
.unittest.assert[`.sphinx.ind; (4;"1");"    1"];

.unittest.assert[`.sphinx.code;(`R;"2";`;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"    :emphasize-lines: 2";"";"";"    show avg[2 3 4]";"    count til 5")];
.unittest.assert[`.sphinx.code;(`R;"";`sample.q;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"";"    :caption: sample.q";"";"    show avg[2 3 4]";"    count til 5")];

.unittest.assert[`.sphinx.code2;enlist ("show avg[2 3 4]";"count til 5");(".. code-block:: R";"";"";"";"    show avg[2 3 4]";"    count til 5")];


.unittest.assert[`.sphinx.split; ("-";"test-string");("test";"string")];


/## @bullet Substitutions test
.unittest.assert[`.sphinx.img;enlist "images/warning.gif";".. image:: images/warning.gif"];
/## @bullet Substitutions warning test
.unittest.assert[`.sphinx.wrnImg;enlist (::); ".. image:: images/warning.gif"];
/## @bullet Substitutions tip test
.unittest.assert[`.sphinx.tipImg;enlist (::); ".. image:: images/tip.gif"] ;

/## @todo write more tests
.unittest.assert[`.sphinx.toggle;( "show/hide code";.sphinx.code[`j;"2";`;c:("show avg[2 3 4]";"count til 5")] ) ;(".. container:: toggle";"";"    .. container:: header";"";"        **show/hide code**";"    .. code-block:: j";"        :emphasize-lines: 2";"    ";"    ";"        show avg[2 3 4]";"        count til 5")];

.unittest.assert[`.sphinx.adm;(`warning;"Some warning");(".. warning::";"";"    Some warning")];
.unittest.assert[`.sphinx.err;enlist "Some error"; (".. error::";"";"    Some error")];
.unittest.assert[`.sphinx.warn;enlist "Some warning";(".. warning::";"";"    Some warning")];
.unittest.assert[`.sphinx.tip;enlist "Some tip";(".. tip::";"";"    Some tip")];
.unittest.assert[`.sphinx.imp;enlist "Some important message"; (".. important::";"";"    Some important message")];
.unittest.assert[`.sphinx.todo;enlist "Things pending to do."; (".. todo::";"";"    Things pending to do.")];

.unittest.assert[`.sphinx.idx;enlist ("schema";"trade");".. index:: schema;trade"];

.unittest.results[]


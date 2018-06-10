/# @package test
/# @name rest-tests rest helper functions tests.

/# @todo add more tests around functions (symbol, symbol list , string, list of strings etc.)

import `str`unittest`rest;

.unittest.init[];

/# @bullet Text Style test
.unittest.assert[`.rest.ts; ("italics";"*") ;"*italics*"];
/# @bullet Italics test
.unittest.assert[`.rest.i; enlist "italics" ;"*italics*"];
/# @bullet Bold test
.unittest.assert[`.rest.b; enlist "bold" ;"**bold**"];
/# @bullet Fixed-space/Monospace test
.unittest.assert[`.rest.fs; enlist "mono-space" ;"``mono-space``"];
/# @bullet paragraph test
.unittest.assert[`.rest.p; enlist "  paragraph  " ;enlist "paragraph"];

/# @bullet Subscript test
.unittest.assert[`.rest.sub; enlist "2" ;"\\ :sub:`2`\\"];
/# @bullet Superscript test
.unittest.assert[`.rest.sup;enlist "2" ;"\\ :sup:`2`\\"];

/# @bullet List test
.unittest.assert[`.rest.l; (("Bullet 1";"Bullet 2");"* ") ;("* Bullet 1";"* Bullet 2")];
/# @bullet Bullet-list test
.unittest.assert[`.rest.bl; enlist ("Bullet 1";"Bullet 2") ;("* Bullet 1";"* Bullet 2")];
/# @bullet Number-list test
.unittest.assert[`.rest.nl; enlist ("Bullet 1";"Bullet 2") ;("#. Bullet 1";"#. Bullet 2")];

/# @bullet literal block test
.unittest.assert[`.rest.lb; enlist ("trade";"price") ;("::";"";"  trade";"  price")];

/# @bullet doctest
.unittest.assert[`.rest.dtb; enlist"{x*y}[3;2]" ;"6\r\n"];

/# @bullet underline test
.unittest.assert[`.rest.ul;( "SubTitle";"-");("";"SubTitle";"--------")];
/# @bullet Title test
.unittest.assert[`.rest.t; enlist "Title"; ("";"Title";"=====")];
/# @bullet Section Title test
.unittest.assert[`.rest.st;enlist "SubTitle";("";"SubTitle";"--------")];
/# @bullet Subsection Title test
.unittest.assert[`.rest.sst;enlist "Subsection Title";("";"Subsection Title";"~~~~~~~~~~~~~~~~")];

/# @bullet overline-underline test
.unittest.assert[`.rest.olul;("Overline-Underline";"-");("------------------";"Overline-Underline";"------------------")];
/# @bullet Document Title test
.unittest.assert[`.rest.dt;enlist "Document Title";("==============";"Document Title";"==============")];
/# @bullet Document Subtitle test
.unittest.assert[`.rest.dst;enlist "Document Subtitle";("-----------------";"Document Subtitle";"-----------------")];


/# @function strif test
.unittest.assert[`.rest.lbl;enlist `trade`schema ; ".. _trade-schema-label:"];
.unittest.assert[`.rest.ref;enlist `trade`schema; " :ref:`trade-schema-label`"];

.unittest.assert[`.rest.fn; (`param`sym;"Instrument Id");"    :param sym: Instrument Id"];
.unittest.assert[`.rest.fn; (`returns;"Price");"    :returns: Price"];
.unittest.assert[`.rest.prm; (`sym;"Instrument Id");":param sym: Instrument Id"];
.unittest.assert[`.rest.ret; enlist "Price";":returns: Price"];

.unittest.assert[`.rest.inc;enlist "resources/inclusion.txt";".. include:: resources/inclusion.txt"];

.unittest.assert[`.rest.ml;enlist "test";enlist "test"];
.unittest.assert[`.rest.ml;enlist ("test1";"test2");("test1";"test2")];
.unittest.assert[`.rest.ind; (4;"1");"    1"];

.unittest.assert[`.rest.code;(`R;"2";`;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"    :emphasize-lines: 2";"";"";"    show avg[2 3 4]";"    count til 5")];
.unittest.assert[`.rest.code;(`R;"";`sample.q;("show avg[2 3 4]";"count til 5"));(".. code-block:: R";"";"    :caption: sample.q";"";"    show avg[2 3 4]";"    count til 5")];

.unittest.assert[`.rest.code2;enlist ("show avg[2 3 4]";"count til 5");(".. code-block:: R";"";"";"";"    show avg[2 3 4]";"    count til 5")];
.unittest.assert[`.rest.split; ("-";"test-string");("test";"string")];


/# @bullet Substitutions test
.unittest.assert[`.rest.img;enlist "images/warning.gif";".. image:: images/warning.gif"];
/# @bullet Substitutions warning test
.unittest.assert[`.rest.wrnImg;enlist (::); ".. image:: images/warning.gif"];
/# @bullet Substitutions tip test
.unittest.assert[`.rest.tipImg;enlist (::); ".. image:: images/tip.gif"] ;

/# @todo write more tests
.unittest.assert[`.rest.toggle;( "show/hide code";.rest.code[`j;"2";`;c:("show avg[2 3 4]";"count til 5")] ) ;(".. container:: toggle";"";"    .. container:: header";"";"        **show/hide code**";"    .. code-block:: j";"        :emphasize-lines: 2";"    ";"    ";"        show avg[2 3 4]";"        count til 5")];

.unittest.assert[`.rest.adm;(`warning;"Some warning");(".. warning::";"";"    Some warning")];
.unittest.assert[`.rest.err;enlist "Some error"; (".. error::";"";"    Some error")];
.unittest.assert[`.rest.warn;enlist "Some warning";(".. warning::";"";"    Some warning")];
.unittest.assert[`.rest.tip;enlist "Some tip";(".. tip::";"";"    Some tip")];
.unittest.assert[`.rest.imp;enlist "Some important message"; (".. important::";"";"    Some important message")];
.unittest.assert[`.rest.todo;enlist "Things pending to do."; (".. todo::";"";"    Things pending to do.")];

.unittest.assert[`.rest.idx;enlist ("schema";"trade");".. index:: schema;trade"];

.unittest.results[]


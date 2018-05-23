/# @package lib
/# @name sphinx Sphinx-ReST helper functions to generate the ReST documents.

/# @todo list table
/# @todo math support  - http://www.sphinx-doc.org/en/stable/ext/math.html#math-support
/# @todo http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter#
/# @todo http://www.sphinx-doc.org/en/stable/markup/index.html


import`str;

\d .sphinx

/# @function text-styles
ts:{y,x,y}

/# @function italics
i:{ts[x;"*"]}

/# @function bold
b:{ts[x;"**"]}

/# @function fixed-space or mono-space
fs:{ts[x;"``"]}

/# @function paragraph
p:{trim each ml x}
/# @code p[([] 1 2 2 3)]

/# @function subscript
sub:{"\\ :sub:`",x,"`\\"}
/# @code "H",sub["2"],"O"

/# @function superscript
sup:{"\\ :sup:`",x,"`\\"}
/# @code "E = mc",sup["2"]

/# @function list
l:{y,/:x}
/# @function bullet list
bl:{l[ml x;"* "]}
/# @code bl string`trade`price

/# @function number list
nl:{l[ml x;"#. "]}
/# @code nl string`trade`price

/# @function literal block
lb:{("::";""),"  ",/:x}
/# @code lb string`trade`price

/# @function doctest block - evaluate the block 
/# @todo protect the execution 
dtb:{.Q.s eval parse x}
/# @code dtb ("{x*y}[3;2]")

/# @function doctest block - evaluate the block 
/# @todo protect the execution 
dtb2:{eval parse x}
/# @code dtb2 ("{x*y}[3;2]")



/# @function underline the text with input charecter
ul:{("";x;count[x]#y)}
/# @code ul["SubTitle";"-"]

/# @function Title
t:{ul[x;"="]}
/# @code t["Title"]

/# @function Section Title
st:{ul[x;"-"]}
/# @code st["SubTitle"]

/# @function Subsection Title
sst:{ul[x;"~"]}
/# @code sst["Subsection Title"]



/# @function overline-underline the text with input charecter
olul:{(t;x;t:count[x]#y)}
/# @code olul["Overline-Underline";"-"]

/# @function Document Title
dt:{olul[x;"="]}
/# @code dt["Document Title"]

/# @function Document Subtitle
dst:{olul[x;"-"]}
/# @code dst["Document Subtitle"]

/# @function strif handle the simple case otherwise flaten it to string
strif:{$[10h=t:type x;x; t=11h;string x;t<0;string x;.Q.s1 x]}
/# @code strif[`test]
/# @code strif[2#`test]
/# @code strif[string `test]
/# @code strif[string 2#`test]

/# @function label
lbl:{".. _",sv["-";string x],"-label:"}
/# @code lbl[`trade`schema]

/# @function reference
ref:{" :","ref",":`",sv["-";string x],"-label`"}
/# @code ref[`trade`schema]

/# @function field list
fn:{[fnl;fc] "    :",sv[" ";ml strif (),fnl],": ",fc}
/# @code fn[fnl:`param`sym;"Instrument Id"]
/# @code fn[fnl:`returns;"Price"]

/# @function field list param
prm:{[fnl;fc] ":param ",strif[fnl],": ",fc}
/# @code prm[fnl:`sym;"Instrument Id"]

/# @function field list ret
ret:{[fc] ":returns: ",fc}
/# @code ret["Price"]



/# @function include
inc:{".. include:: ",x}
/# @code inc["resources/inclusion.txt"]

/# @function multiline code
ml:{[x] $[0h<>type x;enlist x;x]}
/# @code ml["test"]
/# @code ml[("test1";"test2")]

/# @function ind indent the content
ind:{[c;l]#[c;" "],l}
/# @code ind[4;"1"]

/# @function code
code:{[l;e;fn;c]   
    :(".. ","code","-block",":: ",string l;
        //"    :linenos:"; 
        $[e~"";"";"    :emphasize-lines: ",e];   
        $[null fn;"";"    :caption: ",string[fn]];""),
        ind[4;]each ml[c]  }
/# @code code[l:`R;e:"";fn:`sample.q;c:("show avg[2 3 4]";"count til 5")]

code2:{[c] :code[`R;"";`;c] }
/# @code code2[c:("show avg[2 3 4]";"count til 5")]


/# @function split
split:{[t;s] t vs s}
/# @code split["-";"test-string"]

/# @function Substitutions
img:{[f] ".. image:: ",strif[f]}
/# @code img[`$"resources/images/docq.png"]

/# @function Substitutions Warn
wrnImg:{img["images/warning.gif"]}
/# @code wrnImg[]

/# @function Substitutions Tip
tipImg:{img["images/tip.gif"]}
/# @code tipImg[]


toggle:{[h;b] (".. container:: toggle";"";"    .. container:: header";"";"        **",h,"**"),ind[4]each ml[b]};
/# @code toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]]

/# @function admonition 
adm:{[a;b] (".. ",string[a],"::";""),ind[4;]each ml[b]}
/# @code adm[`warning;"Some warning"]
err:{[b]adm[`error;b]}
/# @code err["Some error"]

warn:{[b]adm[`warning;b]}
/# @code warn["Some warning"]

tip:{[b]adm[`tip;b]}
/# @code tip["Some tip"]

imp:{[b]adm[`important;b]}
/# @code imp["Some important message"]

todo:{[b]adm[`todo;b]}
/# @code todo["Things pending to do."]


/# other admonition supported - danger,caution,hint,attention


/# @function index
idx:{[il]".. index:: ",";"sv ml il};
/# @code idx[ ("schema";"trade")]


/----
/# @todo test code
strif2:{$[10h=t:type x; x;t<0;string x;s, ssr[ssr[.Q.s1[x];"'";"''"];"\"";"'\""],s:"\""]}
/# @function 
/# @todo Simplify the csv logic
csvt:{( ".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: ",","sv string cols x;""),{"   ","," sv strif each value x} each x:0!x}
/# @code \l sp.q
/# @code csvt p
/# @code strif each (`str;12.;1b)

/# @todo tests
csvt2:{( ".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: ",  ssr[first x;"|";","] ;""),"   ",/:.sphinx.ml 1_x}


csvth:{[h]( "";".. csv-table:: ";"   :escape: '";"   :delim: |";"   :widths: auto";"   :header: ",ssr[h;"|";","];"")}
csvtr:{[r]"   ",r}


/# @function simple table 
/# @todo need to revisit this function
/tab:{r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r];h:.[count[r 0]#"=";enlist where 1_1=deltas " "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/# @code \l sp.q
/# @code tab[p] 


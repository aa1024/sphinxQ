/## @todo rename the docq files
/## @todo list table
/## @todo math support  - http://www.sphinx-doc.org/en/stable/ext/math.html#math-support
//http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter#
/http://www.sphinx-doc.org/en/stable/markup/index.html

import`str;

\d .docq

/## @function text styles
ts:{y,x,y}

/## @function italics
i:{ts[x;"*"]}

/## @function bold
b:{ts[x;"**"]}

/## @function fixed-space or mono-space
fs:{ts[x;"``"]}

/## @todo  
/## @function paragraph
p:{x}
/p[([] 1 2 2 3)]

/## @function subscript
sub:{"\\ :sub:`",x,"`\\"}
/"H",sub["2"],"O"

/## @function superscript
sup:{"\\ :sup:`",x,"`\\"}
/"E = mc",sup["2"]

/## @function list
l:{y,/:x}
/## @function bullet list
bl:{l[x;"* "]}
/bl string`trade`price

/## @function number list
nl:{l[x;"#. "]}
/nl string`trade`price

/## @function literal block
lb:{("::";""),"  ",/:x}
/lb string`trade`price

/## @function doctest block - evaluate the block 
/## @todo protect the execution 
dtb:{.Q.s eval parse x}
/dtb ("{x*y}[3;2]")

/## @function simple table 
/## @todo need to revisit this function
tab:{r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r];h:.[count[r 0]#"=";enlist where 1_1=deltas " "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/\l sp.q
/tab[p] 

/## @function underline the text with input charecter
ul:{(x;count[x]#y)}
/## @function Title
t:{ul[x;"="]}
/## @function Section Title
st:{ul[x;"-"]}
/## @function Subsection Title
sst:{ul[x;"~"]}

/ul["SubTitle";"-"]
/t["Title"]
/st["SubTitle"]


/## @function overline-underline the text with input charecter
olul:{(t;x;t:count[x]#y)}
/## @function Document Title
dt:{olul[x;"="]}
/## @function Document Subtitle
dst:{olul[x;"-"]}

/olul["Overline-Underline";"-"]
/dt["Document Title"]
/dst["Document Subtitle"]

img:{".. image:: ",x}
wrn:{img["images/warning.gif"]}
tip:{img["images/tip.gif"]}

/## @function 
/## @todo Simplify the csv logic
strif:{$[10h=t:type x; x;t<0;string x;s, ssr[ssr[.Q.s1[x];"'";"''"];"\"";"'\""],s:"\""]}
csvt:{( ".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: ",","sv string cols x;""),{"   ","," sv strif each value x} each x:0!x}
/\l sp.q
/csvt p
/strif each (`str;12.;1b)

/## @function label
lbl:{".. _",sv["-";string x],"-label:"}
/lbl[`trade`schema]

/## @function reference
ref:{" :","ref",":`",sv["-";string x],"-label`"}
/ref[`trade`schema]

/## @function field list
fn:{[fnl;fc] "    :",sv[" ";string (),fnl],": ",fc}
/fn[fnl:`param`sym;"Instrument Id"]
/fn[fnl:`returns;"Price"]

/## @function include
inc:{".. include:: ",x}
/inc["resources/inclusion.txt"]

code:{[l;e;fn;c]   
    :(".. ","code","-block",":: ",string l; 
        $[e~"";"";"    :emphasize-lines: ",e];   
        $[null fn;"";"    :caption: ",string[fn]];""),
        ind[4;]each ml[c]  }
/show  code[l:`R;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]

/## @function multiline code
ml:{[x] $[0h<>type x;enlist x;x]}
/## @function indent
ind:{[c;l]#[c;" "],l}
split:{[t;s] t vs s}

/## @function Substitutions
img:{[f] ".. image:: ",string[f]}
//img[`$"resources/images/docq.png"]

toggle:{[h;b] (".. container:: toggle";"";"    .. container:: header";"";"        **",h,"**"),ind[4]each ml[b]};
/show toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]]

/## @function admonition 
alert:adm:{[a;b] (".. ",string[a],"::";""),ind[4;]each ml[b]}
/show adm[`warning;"Some Info"]
err:{[b]alert[`error;b]}
warn:{[b]alert[`warning;b]}
tip:{[b]alert[`tip;b]}
imp:{[b]alert[`important;b]}
/other admonition supported - danger,caution,hint,attention


/## @function index
idx:{[il]".. index:: ",";"sv ml il};
/idx[il:("schema";"trade")]



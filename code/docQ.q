\d .docq

/text styles
ts:{y,x,y}

/italics
i:{ts[x;"*"]}

/bold
b:{ts[x;"**"]}

/fixed-space or mono-space
fs:{ts[x;"``"]}

/paragraph
p:{x}
/p[([] 1 2 2 3)]
/p .Q.s t

/subscript
sub:{"\\ :sub:`",x,"`\\"}
/"H",sub["2"],"O"
/superscript
sup:{"\\ :sup:`",x,"`\\ "}
/"E = mc",sup["2"]

/list
l:{y,/:x}
/bullet list
bl:{l[x;"* "]}
/bl string`trade`price

/number list
nl:{l[x;"#. "]}
/nl string`trade`price

/literal block
lb:{("::";""),"  ",/:x}
/lb string`trade`price

/doctest block
dtb:{eval parse x}
/dtb ("{x*y}[3;2]")

/simple table @TODO need to revisit this function
tab:{r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r];h:.[count[r 0]#"=";enlist where 1_1=deltas " "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/\l sp.q
/tab[p] 

/underline the text with input charecter
ul:{(x;count[x]#y)}
/Title
t:{ul[x;"="]}
/Section Title
st:{ul[x;"-"]}
/Subsection Title
sst:{ul[x;"~"]}

/ul["SubTitle";"-"]
/t["Title"]
/st["SubTitle"]


/overline-underline the text with input charecter
olul:{(t;x;t:count[x]#y)}
/Document Title
dt:{olul[x;"="]}
/Document Subtitle
dst:{olul[x;"-"]}

/olul["Overline-Underline";"-"]
/dt["Document Title"]
/dst["Document Subtitle"]

img:{".. image:: ",x}
wrn:{img["images/warning.gif"]}
tip:{img["images/tip.gif"]}

strif:{$[10h=t:type x; x;t<0;string x;s, ssr[ssr[.Q.s1[x];"'";"''"];"\"";"'\""],s:"\""]}
csvt:{( ".. csv-table:: ";"   :escape: '";"   :widths: auto";"   :header: ",","sv string cols x;""),{"   ","," sv strif each value x} each x:0!x}
/\l sp.q
/csvt p
/strif each (`str;12.;1b)

/label
lbl:{".. _",sv["-";string x],"-label:"}
/lbl[`trade`schema]

/reference
ref:{" :","ref",":`",sv["-";string x],"-label`"}
/ref[`trade`schema]

/field list
fn:{[fnl;fc] "    :",sv[" ";string (),fnl],": ",fc}
/fn[fnl:`param`sym;"Instrument Id"]
/fn[fnl:`returns;"Price"]

/include
inc:{".. include:: ",x}
/inc["resources/inclusion.txt"]

code:{[l;e;fn;c]   
    :(".. ","code","-block",":: ",string l; 
        $[e~"";"";"    :emphasize-lines: ",e];   
        $[null fn;"";"    :caption: ",string[fn]];""),
        ind[4;]each mlc[c]  }
/show  code[l:`R;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]

//multiline code
mlc:{[x] $[0h<>type x;enlist x;x]}
//indent
ind:{[c;l]#[c;" "],l}
split:{[t;s] t vs s}


/Substitutions
img:{[f] ".. image:: ",string[f]}
//img[`$"resources/images/docq.png"]

toggle:{[h;b] (".. container:: toggle";"";"    .. container:: header";"";"        **",h,"**"),ind[4]each b};
/show toggle[h:"show/hide code";b:code[l:`j;e:"2";fn:`;c:("show avg[2 3 4]";"count til 5")]]




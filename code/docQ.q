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

/bullet list
bl:{"- ",/:x}
/bl string`trade`price

/number list
nl:{"#. ",/:x}
/nl string`trade`price

/literal block
lb:{("::";""),"  ",/:x}
/lb string`trade`price

/doctest block
dtb:{eval parse x}
/dtb ("{x*y}[3;2]")

/simple table @TODO need to revisit this function
tab:{r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r]h:.[count[r 0]#"=";enlist where 1=deltas 1_" "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/\l sp.q
/tab[p] 

ul:{(x;count[x]#y)}
t:{ul[x;"="]}
st:{ul[x;"-"]}

/ul["SubTitle";"-"]
/t["Title"]
/st["SubTitle"]

img:{".. image:: ",x}
w:{img["images/warning.gif"]}
t:{img["images/tip.gif"]}

\d .docq

/paragraph
p:{.Q.s x}
/p[123]
/p .Q.s t

/bullet list
bl:{"- ",/:x}
/bl string`trade`price

/literal block
lb:{("::";""),"  ",/:x}
/lb string`trade`price

/doctest block
dtb:{eval parse x}
/dtb ("{x*y}[3;2]")

/simple table @TODO need to revisit this function
st:{r:.Q.S[value["\\C"];0;0!x];if[".."~last r;r:-1_r]h:.[count[r 0]#"=";enlist where 1=deltas 1_" "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/\l sp.q
/st[p] 

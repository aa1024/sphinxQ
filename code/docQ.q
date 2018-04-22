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

st:{r:.Q.S[10 512;0;0!x];h:.[count[r 0]#"=";enlist -1_where -1=deltas" "<>r 0;:;" "];(h;r[0];h),(2_r),enlist h }
/\l sp.q
/st[p]

f:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\table.q";

f1:f where f like "*/*";

f2:1_/:(f1?\:"/")_'f1;

tokens:`table`desc`header`row;
f2:f2 where any f2 like/:"*@",/:(string tokens ),'"*";

f3:{a:`$" "vs/:x;:a[;0]!trim " "sv/:string 1_/:a}each (string (`$"@"vs/:f2)except\:`);

f4:(where count each (key each f3)inter\:`table)cut f3;

//should be schmea rather than table


sh:{ tn:x@`table;(tn;count[tn]#"+") };
th:{ tn:x@`header;enlist "|" vs tn };
tc:{ tn:x@`row;"|" vs tn };
tb:{xb:.str.sfrb `$x; (c;xb[0];c),(1_xb),enlist c:count[xb 0]#"="};

td:{[f0]
    d1:sh f0[0];
    d2:{ tn:x@`desc;(tn;"") } f0[0];
    h:th f0[0];
    c:tc each   1_f0;
    d3:"  " sv/:flip tb each flip h,c;
    d1,d2,d3,"" 
 };

dn:raze td each f4;

d0:{xs:string x;(xs;count[xs]#"=")}`$"Table Details";

hsym[ `$getenv[`QREPO],"\\..\\docQ\\source\\table.rst"]  0: d0,dn



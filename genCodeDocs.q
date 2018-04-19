import `str;
tokens:`table`desc`header`row`function`param`returns`package;

sh:{ tn:x@`function;(tn;count[tn]#"+") };
th:{ tn:x@`function;enlist "|" vs tn };
tc:{ tn:x@`param;"|" vs tn };
tb:{xb:.str.sfrb `$x; (c;xb[0];c),(1_xb),enlist c:count[xb 0]#"="};
td:{[f0]
    d1:sh f0[0];
    d2:{ tn:x@`desc;(tn;"") } f0[0];
    h:th f0[0];
    c:tc each 1_f0;
    d3:"  " sv/:flip tb each flip h,c;
    d1,d2,d3,enlist "" 
 };

//fc:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\code\\str.q";
parseFile:{[f;n]
    fc:read0 hsym f;
    f1:fc where fc like "*/*";
    f2:1_/:(f1?\:"/")_'f1;
    f2:f2 where any f2 like/:"*@",/:(string tokens ),'"*";
    f3:{a:`$" "vs/:x;:a[;0]!trim " "sv/:string 1_/:a}each (string (`$"@"vs/:f2)except\:`);
    f4:(where count each (key each f3)inter\:`function)cut f3;
    dn:raze td each f4;
    d0:{xs:string x;(xs;count[xs]#"=")}`$string[n]," Table Details";
    hsym[ `$getenv[`QREPO],"\\..\\docQ\\source\\",string[n],".rst"]  0: d0,dn
 };


parseFile[f:`$getenv[`QREPO],"\\..\\docQ\\code\\str.q" ;`str]











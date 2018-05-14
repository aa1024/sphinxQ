import `str`docq;

\c 100 300
tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`file`todo`version`tags`schema;

tagDesc:`function`param`package`alias`schema;

token:(),"/##";
multiLinesToken:(),token,".";

subtitleTokens:`function`schema;

sh:{ tn:x@`function;(tn;count[tn]#"+") };
th:{ tn:x@`function;enlist "|" vs tn };
tc:{ tn:x@`param;"|" vs tn };
tb:{xb:.str.sfrb `$x; (c;xb[0];c),(1_xb),enlist c:count[xb 0]#"="};

td:{[f0]    /f0:first f4
    f0[;0]
    d1:sh f0[0];
    d2:{ tn:x@`desc;(tn;"") } f0[0];
    h:th f0[0];
    c:tc each 1_f0;
    d3:"  " sv/:flip tb each flip h,c;
    d1,d2,d3,enlist "" 
 };


parseFile2:{[f;n]
    fc:read0 hsym f;
    f1:fc where fc like "*",token,"*";
    /ti:where f1 like "*",token,"*";
    /mlti:where f1 like "*",multiLinesToken,"*";

    f11:exec x from update {"/##",x}each x from  ([] x:trim each raze each 1_/:token vs/:f1 ) where first each x like ".*"
    f2:raze f11,\:" ";

//--TODO
    f2:1_/:(f1?\:"/")_'f1;
    f2:f2 where any f2 like/:"*@",/:(string tags ),'"*";
    f3:{a:`$" "vs/:x;:a[;0]!trim " "sv/:string 1_/:a}each (string (`$"@"vs/:f2)except\:`);
    f4:(where count each (key each f3)inter\:`function)cut f3;
    dn:raze td each f4;
    d0:{xs:string x;(xs;count[xs]#"=")}`$string[n]," Package Details";
    d0,dn
 };



//fc:read0 hsym `$getenv[`QDOCS],"\\code\\str.q";
parseFile:{[f;n]
    fc:read0 hsym f;
    f1:fc where fc like "*/*";
    f2:1_/:(f1?\:"/")_'f1;
    f2:f2 where any f2 like/:"*@",/:(string tags ),'"*";
    f3:{a:`$" "vs/:x;:a[;0]!trim " "sv/:string 1_/:a}each (string (`$"@"vs/:f2)except\:`);
    f4:(where count each (key each f3)inter\:`function)cut f3;
    dn:raze td each f4;
    d0:{xs:string x;(xs;count[xs]#"=")}`$string[n]," Package Details";
    d0,dn
 };

saveFile:{[n;rst] hsym[ `$getenv[`QDOCS],"\\source\\",string[n],".rst"]  0: rst}

//parseFile[f:`$getenv[`QDOCS],"\\code\\str.q" ;`str]
rst:parseFile[f:`$getenv[`QDOCS],"\\code\\sample.q" ;n:`sample]
show rst
saveFile[`sample;rst]
import `str`docq;

\c 100 300
tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema;
searchTokens:`$"@",/:string tags;
tagDesc:`name`function`param`package`alias`schema;
tdt:`$"@",/:string tagDesc;
token:(),"/##";
multiLinesToken:(),token,".";

//TODO package and file grouping
map:(`$"@",/:string(`name`function`param`return`package))!`dt`dst`fn`fn`idx;



/subtitleTokens:`function`schema;

parseFile2:{[f;n]
    fc:read0 hsym f;
    f1:fc where fc like "*",token,"*";
    /ti:where f1 like "*",token,"*";
    /mlti:where f1 like "*",multiLinesToken,"*";

    /add an extra space at the end of each comment and then raze the whole list.
    f2:raze f1,\:" ";
    
    /tokenize with space
    f3:" "vs f2;
    //search the tags
    
    tokenInd:where (`$f3)in\:searchTokens ;
    f4:tokenInd cut f3;

    conTab:([] tag:`$f4[;0]; content:1_/:f4);
   
    conTab1:update para :count[i]#enlist enlist "" from conTab;

    conTab2:update content :enlist each first each content , para:1_/:content from conTab1 where  tag in tdt ;
    conTab3:update trim each " "sv/:content, " "sv/:para from conTab2;
    
    conTab4:update f:map tag from conTab3;

    update d:(value f)@'content from conTab4

conTab4

(value `idx) `$"example"

//--TODO
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
import `str`docq;

/# @todo way to change the table delimiters
/# @todo remember previous state and make decision to enter the new line

tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema`desc;
searchTokens:`$"@",/:string tags;
/# @todo test when desc is multiline @func x a b c /#. d
tagDesc:`name`function`param`alias`schema;
tdt:`$"@",/:string tagDesc;
token:(),"/#";
multiLinesToken:(),token,".";

//TODO package and file grouping
map:(`$"@",/:string(`name`function`param`return`package`header`row`desc))!`$"."sv/:string `.docq,/:`dt`sst`prm`ret`idx`csvth`csvtr`p;
fnl:`$("@param";"@return");

/subtitleTokens:`function`schema;

/f:`$getenv[`QDOCS],"\\code\\sample.q"
.gd.prevTag:`;

addNewline:{[t;o] if[.gd.prevTag<>t;o:enlist[""],o];.gd.prevTag:t;:o};

func2:{[l] 
    t:`$l[0]; c:1_l; p:"";
    if[t in tdt; p:1_c; c:c[0] ];
    if[t in fnl; 
        o:.docq.ml value[map[t]][ trim ssr[;token;""] " "sv .docq.ml c; trim ssr[;token;""] ssr[;multiLinesToken;""] " "sv .docq.ml p];    
        :addNewline[t;o]
    ];

    /r1:e2[( map[t];   ssr[;token;""] " "sv .docq.ml c)];
    r1:map[t]@   ssr[;token;""] " "sv .docq.ml c;
    r2:map[`$"@desc"]@ssr[;token;""]each trim each multiLinesToken vs " "sv .docq.ml p;
    addNewline[t;.docq.ml[r1],.docq.ml[r2]]
 };

parseFile2:{[f;n]
    fc:read0 hsym f;
    f1:fc where any fc like/:(token,"*";"* ",token,"*");
    /ti:where f1 like "*",token,"*";
    /mlti:where f1 like "*",multiLinesToken,"*";

    dl:where not any  f1 like/:("*",multiLinesToken,"*";"*@*");

    f11:@[f1;dl;{y,x};(count dl)#enlist "@desc "];


    /add an extra space at the end of each comment and then raze the whole list.
    f2:raze f11,\:" ";
    
    /tokenize with space
    f3:" "vs f2;
    //search the tags
    
    tokenInd:where (`$f3)in\:searchTokens ;
    f4:tokenInd cut f3;

    raze func2 each f4

 };

ext:{
    conTab:([] tag:`$f4[;0]; content:1_/:f4);
   
    /conTab:ungroup update {[content](( 0,where content  like multiLinesToken)cut content)} each content from conTab;

    conTab11:update content:{string (`$x)except `$(multiLinesToken;token)} each content from conTab;
    conTab11 :delete  from conTab11 where content~\:();

    conTab1:update para :count[i]#enlist enlist "" from conTab11;

    conTab2:update content :enlist each first each content , para:1_/:content from conTab1 where  tag in tdt ;
    conTab3:update trim each " "sv/:content, " "sv/:para from conTab2;
    
    conTab4:update f:map tag from conTab3;

    conTab5:update v:enlist each content from conTab4;
    //rules
    conTab5:update v:((enlist each content),'enlist each para)from conTab5 where any tag like/:("@param";"@return");

    e2:{.[value x[0];  x[1];{show x;:""}]};
    raze exec ml each e2 each  (f,'enlist each v) from conTab5

 };


saveFile:{[n;rst] hsym[ `$getenv[`QDOCS],"\\source\\",string[n],".rst"]  0: rst};

//parseFile[f:`$getenv[`QDOCS],"\\code\\str.q" ;`str]
rst:parseFile2[f:`$getenv[`QDOCS],"\\code\\sample.q" ;n:`sample];
show rst;
saveFile[`sample;rst]
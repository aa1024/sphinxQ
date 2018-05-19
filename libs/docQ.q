\d .docq

import `str`sphinx;

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
map:(`$"@",/:string(`name`function`param`return`package`header`row`desc`todo`code))!`$"."sv/:string `.sphinx,/:`dt`sst`prm`ret`idx`csvth`csvtr`p`todo`code2;
fnl:`$("@param";"@return");

/subtitleTokens:`function`schema;

/f:`$getenv[`QDOCS],"\\code\\sample.q"

addNewline:{[t;o] if[.gd.prevTag<>t;o:enlist[""],o];.gd.prevTag:t;:o};

isEmpty:{""~raze x};

init:{
    .gd.name:"";
    .gd.package:"";
    .gd.prevTag:`;
 };

getMeta:{[tl]
    package:tl where tl[;0] like"@package*";
    .gd.package:package[0;1];
    name:tl where tl[;0] like"@name*";
    .gd.name:name[0;1];
 };


func2:{[l] 
    t:`$l[0]; c:1_l; p:"";
    if[t in tdt; p:1_c; c:c[0] ];
    if[t in fnl; 
        o:.sphinx.ml value[map[t]][ trim ssr[;token;""] " "sv .sphinx.ml c; trim ssr[;token;""] ssr[;multiLinesToken;""] " "sv .sphinx.ml p];    
        :addNewline[t;o]
    ];

    /r1:e2[( map[t];   ssr[;token;""] " "sv .sphinx.ml c)];
    r1:map[t]@   ssr[;token;""] " "sv .sphinx.ml c;
    r2:map[`$"@desc"]@ssr[;token;""]each trim each multiLinesToken vs " "sv .sphinx.ml p;
    addNewline[t;$[isEmpty r2;.sphinx.ml[r1];.sphinx.ml[r1],.sphinx.ml[r2]]]
 };

parseFile:{[f]

    init[];
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
    
    getMeta[f4];    

    raze func2 each f4

 };


process:{[file]
    rst:parseFile[file];
    show rst;
    hsym[ `$getenv[`QDOCS],"\\source\\",strif[.gd.name],".rst"]  0: rst
 };

//process[file:`$getenv[`QDOCS],"\\libs\\sphinx.q"]
process[file:`$getenv[`QDOCS],"\\code\\sphinxTests.q"]
process[file:`$getenv[`QDOCS],"\\libs\\docq.q"]
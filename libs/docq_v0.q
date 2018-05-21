import `str`sphinx`file;

/\d .docq

tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema`desc`toggle;
tagDesc:`name`function`param`alias`schema;
fieldList:`param`return;
token:(),"/#";
multiLinesToken:(),token,".";

getTag:{`$"@",.sphinx.strif[x]};

searchTokens:getTag each tags;
tagWithDesc:getTag each tagDesc;
fnl:getTag each fieldList;


//TODO package and file grouping
map:(`$"@",/:string(`name`function`param`return`package`header`row`desc`todo`code`toggle))!`$"."sv/:string `.sphinx,/:`dt`sst`prm`ret`idx`csvth`csvtr`p`todo`code2`toggle2;

/subtitleTokens:`function`schema;

.sphinx.toggle2:{.sphinx.toggle["show/hide" ;enlist[""],.sphinx.ml x] };

addNewline:{[t;o] if[.gd.prevTag<>t;o:enlist[""],o];.gd.prevTag:t;:o};
isEmpty:{""~raze over x};

init:{
    .gd.name:"";
    .gd.package:"";
    .gd.prevTag:`;
 };

getMeta:{[tl;f]
    package:tl where tl[;0] like"@package*";
    .gd.package:$[count package;package[0;1];"misc"];
    name:tl where tl[;0] like"@name*";
    .gd.name:$[count name;name[0;1];getFileName[f]] ;
 };

tokenChain:{[t]  `$"@",/:"-" vs 1_string t};

func2:{[l] 
    t:`$l[0]; c:1_l;
    tc:tokenChain[t];
    func3/[c; reverse tc]     
    /c:func3[c;last tc] ; t:first tc
 };

func3:{[c;t] 
     p:"";
    if[t in tagWithDesc; p:1_c; c:c[0] ];
    if[t in fnl; 
        o:.sphinx.ml value[map[t]][ trim ssr[;token;""] " "sv .sphinx.ml c; trim ssr[;token;""] ssr[;multiLinesToken;""] " "sv .sphinx.ml p];    
        :addNewline[t;o]
    ];

    /r1:e2[( map[t];   ssr[;token;""] " "sv .sphinx.ml c)];
    r1:map[t]@ ssr[;token;""] " "sv trim each multiLinesToken vs " "sv .sphinx.ml c;
    /# Convert the content as simple para
    r2:map[`$"@desc"]@ssr[;token;""]each trim each multiLinesToken vs " "sv .sphinx.ml p;
    addNewline[t;$[isEmpty r2;.sphinx.ml[r1];.sphinx.ml[r1],.sphinx.ml[r2]]]
 };

parseFile:{[file]

    init[];
    fc:read0 hsym file;
    f1:fc where any fc like/:(token,"*";"* ",token,"*");
    f1:@[f1 ;where f1 like ("* ",token," *");{" " sv  1_token vs x}];

    dl:where not any  f1 like/:("*",multiLinesToken,"*";"*@*");

    f11:@[f1;dl;{y,x};(count dl)#enlist "@desc "];

    /add an extra space at the end of each comment and then raze the whole list.
    f2:raze f11,\:" ";
    
    /tokenize with space
    f3:" "vs f2;
    //search the tags
    
    //does not suport token chaining
    //tokenInd:where (`$f3)in\:searchTokens ;
    tokenInd:where any f3 like/:"*",/:string[searchTokens ],\:"*";

    f4:tokenInd cut f3;
    
    getMeta[f4;file];    
    raze func2 each f4
 };

process:{[file]
    rst:.[parseFile;enlist file;`error];
    if[rst~`error;:()];
    show rst;
    hsym[ `$getenv[`QDOCS],"\\source\\",.str.cc[.sphinx.strif[.gd.name]],".rst"]  0: rst
 };


//fld:file:`$"C:\\Users\\alika\\OneDrive\\Documents\\Github\\docQ\\code\\sample.q"
/.file.getFileName file:`$"C:\\Users\\alika\\OneDrive\\Documents\\Github\\docQ\\code\\sample.q"
/process each  file :(raze getFiles each folders)


/process[file:`$getenv[`QDOCS],"\\libs\\sphinx.q"]
/process[file:`$getenv[`QDOCS],"\\libs\\str.q"]
/process[file:`$getenv[`QDOCS],"\\code\\sphinxTests.q"]
process[file:`$getenv[`QDOCS],"\\code\\sample.q"]

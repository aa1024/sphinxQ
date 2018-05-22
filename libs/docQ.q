import `str`sphinx`file;

/\d .docq

tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema`desc`toggle`bullet`eval;
tagDesc:`name`function`alias`schema;
fieldList:`param`return;
token:(),"/#";
multiLinesToken:(),token,".";

getTag:{`$"@",.sphinx.strif[x]};

searchTokens:getTag each tags;
tagWithDesc:getTag each tagDesc;
fnl:getTag each fieldList;


//TODO package and file grouping
map:(`$"@",/:string(`name`function`schema`param`return`package`header`row`desc`todo`code`toggle`eval`bullet))!`$"."sv/:string `.sphinx,/:`dt`sst`sst`prm`ret`idx`csvth`csvtr`p`todo`code2`toggle2`dtb2`bl;

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
    /c:func3[c;t:last tc] ; t:first tc
 };

tagWithDescF:{[c;t] 
    p:1_c; c:c[0];


    r1:map[t]@ ssr[;token;""] " "sv trim each multiLinesToken vs " "sv .sphinx.ml c;
    if[t = `$"@name" ; r1:("";.sphinx.lbl [ `$( .gd.package ; .gd.name)];""),r1 ];

    if[t in `$("@function";"@schema") ; r1:("";.sphinx.lbl [ `$( .gd.package ; .gd.name ; c)];""),r1 ];

    r2:map[`$"@desc"]@ssr[;token;""]each trim each multiLinesToken vs " "sv .sphinx.ml p;
    addNewline[t;$[isEmpty r2;.sphinx.ml[r1];.sphinx.ml[r1],.sphinx.ml[r2]]]

 };

evalCode:{[t;c]
    o:map[t]@ ssr[;token;""] " "sv trim each multiLinesToken vs " "sv .sphinx.ml c;
    //need to fix it
    /:$[98h~type o;  [o1:"|" 0:o; (enlist""), (.sphinx.code2 .Q.s o1), (enlist"") ]; .Q.s 0]

    :$[98h~type o;  [o1:"|" 0:o; (enlist""), (.sphinx.csvth  o1 0),( .sphinx.csvtr each 1_o1) ]; .Q.s 0]


 };

func3:{[c;t] 
     p:"";
    show t;
    if[t in tagWithDesc; :tagWithDescF [c;t]];

    if[t = `$"@eval" ; :evalCode[t;c] ];
    /if[t = `$"@eval" ; : .sphinx.code2 .sphinx.dtb@ ssr[;token;""] " "sv trim each multiLinesToken vs " "sv .sphinx.ml c ];

    if[t = `$"@package" ; :("";.sphinx.idx [  (.gd.package ; .gd.name)];"")];

    if[t~`$"@param";
        o:.sphinx.ml value[map[t]][ trim first .sphinx.ml c; trim ssr[;token;""] ssr[;multiLinesToken;""] " "sv 1_.sphinx.ml c];    
        :addNewline[t;o]
    ];

    if[t~`$"@toggle";
        :addNewline[t;map[t]@ .sphinx.ml c];
    ];

    /commenting as i want to check the mutliline formatting 
    $[t=`$"@code"; 
        r1:map[t]@ .sphinx.ml multiLinesToken vs " "sv .sphinx.ml c;
        r1:map[t]@ ssr[;token;""] " "sv trim each multiLinesToken vs " "sv .sphinx.ml c];

    addNewline[t; .sphinx.ml[r1]]
 };

parseFile:{[file]

    init[];
    fc:read0 hsym file;
    /# Read the comments containing the tokens
    f1:fc where any fc like/:(token,"*";"* ",token,"*");
    /# Extract only the comment part 
    f1:@[f1 ;where f1 like ("* ",token," *");{trim " " sv  1_token vs x}];

    /# Assign `desc` tag explicitly to the lines which are not multiline comment and does not have any tag
    dl:where not any  f1 like/:("*",multiLinesToken,"*";"*@*");
    f11:@[f1;dl;{y,x};(count dl)#enlist "@desc "];

    /# add an extra space at the end of each comment and then raze the whole list to a simple string.
    f2:raze f11,\:" ";
    f3:" "vs f2;
    f3:f3 except ("";token);

    /# Tokenise the string by tags
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


/process[file:`$getenv[`QDOCS],"\\libs\\sphinx.q"];
/process[file:`$getenv[`QDOCS],"\\libs\\str.q"]
/process[file:`$getenv[`QDOCS],"\\code\\sphinxTests.q"]
process[file:`$getenv[`QDOCS],"\\code\\sample.q"]

/# @name sphinxq Function Library for processing the sphinxQ tags and generating the ReST style documents. 

/# @package lib

import `str`rest`file;

/\d .sphinxq

/# @schema Tags Following are the tags currently supported by this library
/# @code-eval ([] tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema`desc`toggle`bullet`eval`table)
tags:`table`desc`header`row`function`param`return`package`alias`error`code`see`name`todo`version`tags`schema`desc`toggle`bullet`eval`table;

tagDesc:`name`function`alias`schema;

token:(),"/#";
multiLinesToken:(),token,".";

getTag:{`$"@",.str.strif[x]};
searchTokens:getTag each tags;

.map:enlist[`]!enlist (::);
.map[getTag`name]:`name;
.map[getTag`package]:`package;
.map[getTag`function]:`function;
.map[getTag`schema]:`function;
.map[getTag`param]:`param;
.map[getTag`return]:`return;
.map[getTag`header]:`header;
.map[getTag`row]:`row;
.map[getTag`desc]:`descr;
.map[getTag`code]:`code;
.map[getTag`todo]:`todo;
.map[getTag`bullet]:`bullet;
.map[getTag`toggle]:`toggle;
.map[getTag`eval]:`evalCode;
.map[getTag`text]:`text;
.map[getTag`table]:`table;

addNewline:{[t;o] if[.sphinx.prevTag<>t;o:enlist[""],o];.sphinx.prevTag:t;:o};
isEmpty:{""~raze over x};
tokenChain:{[t]  `$"@",/:"-" vs 1_string t};
.sphinx.rstList:([] rst:());

reset:{
    .sphinx.fileName:"getthefilenameasdefault";
    .sphinx.filePackage:"misc";
    .sphinx.prevTag:`;
 };

processTag:{[l] 
    .temp.l:l;   /l:.temp.l
    tag:l[0];
    if[ not any tag like/:("*code-eval*";"*table-eval*"); tag:ssr[tag;"eval";"text-eval"]];
    t:`$tag; d:1_l;
    tc:tokenChain[t];
    {[d;t] .map[t][d;t]  }/[d; reverse tc]   /t:last tc ; d:.map[t][d;t] ;t:first tc
 };

/processTag l:f4 3
/t:`$l[0]; d:1_l; ; map[t]
/raze processTag each f4


/ processTag (getTag"code-eval";enlist "\"";"func2[2;3]";enlist "=";"\",";"string";"2+3")
/ processTag (getTag"eval"; "([]";"a:(1;2;3;4))")
/ processTag (getTag"code-eval"; "([]";"a:(1;2;3;4))")
/ processTag (getTag"table-eval"; "([]";"a:(1;2;3;4))")
/ processTag l:(getTag"row"; "startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)")

/ name[("Sample";"Group";"of";"sample";"function";"for";"document";"generation"); getTag`name] 
/ package[enlist "example"; getTag`package] 
/ function[("func1";enlist "A";"sample";"function";"to";"generate";"/#.";"an";"inline";"table";"for";"input";"parameter";"dictionary"); getTag`function] 
/ param[("dict";"Input";"Parameter";"Dictionary"); getTag`param]
/ return[enlist ""; getTag`return] 
/ descr [("Param";"details"); getTag`desc] 
/ header[enlist "Key|Type|Required|Default|Desc"; getTag`header]
/ row[("startDate|date|0b|.z.d|Start";"Date";"(if";"null";"or";"not";"provided,";"will";"be";"set";"as";"current";"date)");getTag`row] 
/ code[d:("show";"dict") ;getTag`code]
/ code[  evalCode[("([]";"a:(1;2;3;4))");getTag`eval] ;getTag`code]

/ todo[("Change";"the";"function";"implementation") ;getTag`todo]
/ bullet[("Change";"the";"function";"implementation") ;getTag`bullet]

/ toggle[("Calculate";"the";"sum") ;getTag`toggle]
/ flatten[("Param";"details") ]

/ evalCode[("([]";"a:(1;2;3;4))");getTag`eval]
/ table[([] a: 1 2 3 4);getTag`table]


flatten:{[d] :" "sv trim each multiLinesToken vs " "sv .rest.ml d};
table:{[d;t]  .rest.csvt d};

package:{[d;t] :("";.rest.idx [  (.sphinx.filePackage ; .sphinx.fileName)];"") };
descr:  {[d;t] addNewline[t; .rest.p  [ssr[;token;""]          flatten[d] ] ]};
return: {[d;t] addNewline[t;.rest.ml .rest.ret[ssr[;token;""]         flatten[d] ] ]};
header: {[d;t] addNewline[t;.rest.csvth  ssr[;token;""]      flatten[d] ]};
row:    {[d;t] addNewline[t;.rest.ml .rest.csvtr  ssr[;token;""]         flatten[d]] };
toggle: {[d;t] addNewline[t;.rest.toggle2 @     d ] };
todo:   {[d;t] addNewline[t;r1: .rest.todo  @  ssr[;token;""] flatten[d]  ]};
bullet: {[d;t] addNewline[t;r1: .rest.bl   @ ssr[;token;""] flatten[d]  ]};
evalCode:{[d;t]    .rest.dtb2 @ ssr[;token;""] flatten[d] };
text:{[d;t]  .rest.ml .Q.s1 d};

code:{[d;t] 
    $[ all 10h=type each .rest.ml d; 
        [r1:.rest.code2@ .rest.ml multiLinesToken vs " "sv .rest.ml d; :addNewline[t; .rest.ml[r1]]] ;
        $[98h~type d;  [o:"\n" vs ssr[;"\r";""].Q.s d; :(enlist""), (.rest.code2  o), (enlist"") ]; .Q.s1 flip d]
    ]    
 };

name:{[d;t] 
    para:1_d; c:d[0];
    r1:.rest.dt@ ssr[;token;""] flatten  c;
    r1:("";.rest.lbl [ `$( .sphinx.filePackage ; .sphinx.fileName)];""),r1 ;
    r2:descr[para;t] ;
    addNewline[t;$[isEmpty r2;.rest.ml[r1];.rest.ml[r1],.rest.ml[r2]]]
 };

/# @todo in case of schema add an extra index of schema
function:{[d;t] 
    para:1_d; c:d[0];
    r1:.rest.sst@ ssr[;token;""] flatten  c;
    r1:("";.rest.lbl [ `$( .sphinx.filePackage ; .sphinx.fileName ; c)];""),r1;
    r2:descr[para;t] ;
    addNewline[t;$[isEmpty r2;.rest.ml[r1];.rest.ml[r1],.rest.ml[r2]]]
 };

param:{[d;t] 
     o:.rest.ml .rest.prm[ trim first .rest.ml d; trim ssr[;token;""] ssr[;multiLinesToken;""] " "sv 1_.rest.ml d];    
    :addNewline[t;o]
 };

getMeta:{[tl;f]
    package:tl where tl[;0] like"@package*";
    .sphinx.filePackage:$[count package;package[0;1];"misc"];
    name:tl where tl[;0] like"@name*";
    .sphinx.fileName:$[count name;name[0;1];getFileName[f]] ;
 };

/# @schema parseFile Steps how a file will be proceesed 
parseFile:{[file]
    reset[];
    fc:read0 hsym file;
    /# @bullet Read the comments containing the tokens
    f1:fc where any fc like/:(token,"*";"* ",token,"*");
    /# @bullet Extract only the comment part 
    f1:@[f1 ;where f1 like ("* ",token," *");{trim " " sv  1_token vs x}];

    /# @bullet Assign `desc` tag explicitly to the lines which are not multiline comment and does not have any tag
    dl:where not any  f1 like/:("*",multiLinesToken,"*";"*@*");
    f11:@[f1;dl;{y,x};(count dl)#enlist "@desc "];

    /# @bullet add an extra space at the end of each comment and then raze the whole list to a simple string.
    f2:raze f11,\:" ";
    f3:" "vs f2;
    f3:f3 except ("";token);

    /# @bullet Tokenise the string by tags
    tokenInd:where any f3 like/:"*",/:string[searchTokens ],\:"*";
    f4:tokenInd cut f3;
    
    /# @bullet Get meta information that will be used in creating the labels and indexing
    getMeta[f4;file];    

    /# @bullet Start processing each tag
    rst:raze processTag each f4;
    `.sphinx.rstList upsert `$.str.strif[.sphinx.fileName];

    :rst
 };

process:{[file]
    rst:.[parseFile;enlist file;`error];
    if[rst~`error;:()];
    hsym[ `$getenv[`QDOCS],"\\source\\",.str.cc[.str.strif[.sphinx.fileName]],".rst"]  0: rst
 };


init:{
    .sphinx.rstList:0#.sphinx.rstList;
    process each  (raze .file.getFiles each .file.folders);
    toc:.rest.toc exec .str.cc each string rst from .sphinx.rstList;
    hsym[ `$getenv[`QDOCS],"\\source\\packageList.rst"]  0: toc
 };

/file:first (raze .file.getFiles each .file.folders)
/process[file:`$getenv[`QDOCS],"\\code\\sample.q"];
/process[file:`$getenv[`QDOCS],"\\libs\\str.q"];
/process[file:`$getenv[`QDOCS],"\\libs\\sphinx.q"];
/process[file:`$getenv[`QDOCS],"\\code\\sphinxTests.q"];


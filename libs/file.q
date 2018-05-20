import `str;

\d .file

folders:(`$getenv[`QDOCS],"\\libs\\";`$getenv[`QDOCS],"\\code\\");
fileExt:enlist ("q");

getFiles:{[fld]  $[11h=t:type fls:key fld:hsym fld; raze .z.s each ` sv/:fld,/:fls ;0h=t; (); ((),fls) where any ((),fls) like/:("*",/:fileExt)  ] };

//fld:file:`$"C:\\Users\\alika\\OneDrive\\Documents\\Github\\docQ\\libs\\file.q"

/getFiles each folders
getFileName:{[fn]
    del:?[count[s]=(s:.str.tstr fn)?"/";"\\";"/"];
    string first ` vs `$last del vs  s
 };

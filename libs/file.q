import `str;

\d .file

getFiles:{[fl;ext] raze {[fld;ext] $[11h=t:type fls:key fld:hsym fld; raze .z.s[;ext] each ` sv/:fld,/:fls ;0h=t; (); ((),fls) where any ((),fls) like/:(ext)  ] }[;ext] each fl };
getFileName:{[fn] del:?[count[s]=(s:.str.tstr fn)?"/";"\\";"/"];  string first ` vs `$last del vs  s };
saveFile:{[fn;con] hsym[ `$fn ]  0: con };
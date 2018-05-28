/# @package lib
/# @name file
/# @desc File helper functions 

import `str;

\d .file

/# @function getFiles Get the list of files 
/# @param fl Folder List 
/# @param ext Extension of the files to be returned  
getFiles:{[fl;ext] raze {[fld;ext] $[11h=t:type fls:key fld:hsym fld; raze .z.s[;ext] each ` sv/:fld,/:fls ;0h=t; (); ((),fls) where any ((),fls) like/:(ext)  ] }[;ext] each fl };

/# @function getFileName Get the name of the file 
/# @param fn file name 
getFileName:{[fn] del:?[count[s]=(s:.str.tstr fn)?"/";"\\";"/"];  string first ` vs `$last del vs  s };

/# @function saveFile Save the file  
/# @param fn file name 
/# @param con contents to be saved 
saveFile:{[fn;con] hsym[ `$fn ]  0: con };
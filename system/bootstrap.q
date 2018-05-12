qLibs:getenv `QLIBS;

import:{ x:(),x; r:0N!x!.sys.importLib each x;:r}

.sys.importLib:{@[ { value "\\l ", qLibs,"\\libs\\",string[x],".q";1b} ;x;{show x;0b}]}

-1"***** Loaded Bootstrap File *****";

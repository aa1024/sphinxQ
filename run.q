\d .settings

baseFolder:".";

folders:(`$"./libs/";`$"./code/");
fileExt:enlist ("*.q");

token:(),"/#";
multiLinesToken:(),token,".";

\d .

import:{ x:(),x; r:0N!x!.sys.importLib each x;:r};
.sys.importLib:{@[ { value "\\l ", .settings.baseFolder,"/libs/",string[x],".q";1b} ;x;{show x;0b}]};

\
import `sphinx;

.sphinx.init[base:.settings.baseFolder;fl:.settings.folders;ext:.settings.fileExt];
show system "sphinx-build  ",.settings.baseFolder,"/source ",.settings.baseFolder,"/docs"

\\

/    c:\Code\Github\sphinxQ>q run.q
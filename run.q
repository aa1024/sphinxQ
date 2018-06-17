\d .settings

baseFolder:".";

folders:(`$"./libs/";`$"./code/");
fileExt:enlist ("*.q");

token:(),"/#";
multiLinesToken:(),token,".";

\d .

import:{ x:(),x; r:0N!x!.sys.importLib each x;:r};
.sys.importLib:{@[ { value "\\l ", .settings.baseFolder,"/libs/",string[x],".q";1b} ;x;{show x;0b}]};

/ Load the lib
import `sphinx;

/ Process the files
.sphinx.init[.settings.baseFolder;.settings.folders;.settings.fileExt];

/ Run Sphinx build
show system "sphinx-build  ",.settings.baseFolder,"/source ",.settings.baseFolder,"/docs"

\\

/    c:\Code\Github\sphinxQ>q run.q

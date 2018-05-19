import `sphinx;

t0:enlist "";
t01:enlist[.sphinx.lbl[`sphinx`sample]],t0;

t1:.sphinx.dt["Document Title"];
t2:.sphinx.dst["Document Subtitle"];

t20:t0,enlist .sphinx.inc["resources/inclusion.txt"];

t3:t0,.sphinx.t["Test Styles"];
t31:t0,enlist .sphinx.p["A sample with paragraph, "],.sphinx.i["italics"],", ",.sphinx.b["bold"]," and ",.sphinx.fs["mono-space"]," text style examples.";
t32:t0,enlist .sphinx.p["Subscript H"],.sphinx.sub["2"],"O and Superscript E=mc",.sphinx.sup["2"]," examples.";

t33:t0,.sphinx.t["Code Block"];
t34:t0,enlist .sphinx.code[`R;"2-3";`sample.q;c:"    sampleFunctParamDict:{[paramDict]\n      show avg[2 3 4];\n      count til 5;    }"];


t4:t0,.sphinx.t["Cross-referencing"];
t41:t0,enlist "Link to",.sphinx.ref[`trade`schema];

t50:t0,.sphinx.t["Lists"];
t5:t0,.sphinx.st["Bullet List"];
t51:t0,.sphinx.sst["Bullet List with *"];
t52:t0,.sphinx.bl[("Bullet 1";"Bullet 2")];
t53:t0,.sphinx.sst["Bullet List with -"];
t54:t0,.sphinx.l[("Bullet 1";"Bullet 2");"- "];

t6:t0,.sphinx.t["Enumerated List"];
t61:t0,.sphinx.nl[("Item 1";"Item 2")];

t7:t0,.sphinx.t["Tables"];
t71:t0,.sphinx.st["Simple Table"];
t72:t0,.sphinx.tab ([] func:key[1_.sphinx];def:1_value[.sphinx]);
t73:t0,.sphinx.st["csv Table"];
t74:t0,.sphinx.csvt ([] func:key[1_.sphinx];def:1_value[.sphinx]);

hsym[ `$getenv[`QDOCS],"\\source\\sphinxSample.rst"]  0:  t01,t1,t2,t20,t3,t31,t32,t33,t4,t41,t50,t5,t51,t52,t53,t54,t6,t61,t7,t71,t72,t73,t74


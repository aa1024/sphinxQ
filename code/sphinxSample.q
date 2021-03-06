import `rest;

t0:enlist "";
t01:enlist[.rest.lbl[`rest`sample]],t0;

t1:.rest.dt["Document Title"];
t2:.rest.dst["Document Subtitle"];

t20:t0,enlist .rest.inc["resources/inclusion.txt"];

t3:t0,.rest.t["Test Styles"];
t31:t0,enlist .rest.p["A sample with paragraph, "],.rest.i["italics"],", ",.rest.b["bold"]," and ",.rest.fs["mono-space"]," text style examples.";
t32:t0,enlist .rest.p["Subscript H"],.rest.sub["2"],"O and Superscript E=mc",.rest.sup["2"]," examples.";

t33:t0,.rest.t["Code Block"];
t34:t0,enlist .rest.code[`R;"2-3";`sample.q;c:"    sampleFunctParamDict:{[paramDict]\n      show avg[2 3 4];\n      count til 5;    }"];


t4:t0,.rest.t["Cross-referencing"];
t41:t0,enlist "Link to",.rest.ref[`trade`schema];

t50:t0,.rest.t["Lists"];
t5:t0,.rest.st["Bullet List"];
t51:t0,.rest.sst["Bullet List with *"];
t52:t0,.rest.bl[("Bullet 1";"Bullet 2")];
t53:t0,.rest.sst["Bullet List with -"];
t54:t0,.rest.l[("Bullet 1";"Bullet 2");"- "];

t6:t0,.rest.t["Enumerated List"];
t61:t0,.rest.nl[("Item 1";"Item 2")];

t7:t0,.rest.t["Tables"];
t71:t0,.rest.st["Simple Table"];
t72:t0,.rest.tab ([] func:key[1_.rest];def:1_value[.rest]);
t73:t0,.rest.st["csv Table"];
t74:t0,.rest.csvt ([] func:key[1_.rest];def:1_value[.rest]);

hsym[ `$getenv[`QDOCS],"\\source\\sphinxSample.rst"]  0:  t01,t1,t2,t20,t3,t31,t32,t33,t4,t41,t50,t5,t51,t52,t53,t54,t6,t61,t7,t71,t72,t73,t74


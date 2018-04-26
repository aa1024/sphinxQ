system "l ",getenv[`QDOCS],"\\code\\docQ.q";

t0:enlist "";
t01:enlist[.docq.lbl[`docq`sample]],t0;

t1:.docq.dt["Document Title"];
t2:.docq.dst["Document Subtitle"];

t20:t0,enlist .docq.inc["resources/inclusion.txt"];

t3:t0,.docq.t["Test Styles"];
t31:t0,enlist .docq.p["A sample with paragraph, "],.docq.i["italics"],", ",.docq.b["bold"]," and ",.docq.fs["mono-space"]," text style examples.";
t32:t0,enlist .docq.p["Subscript H"],.docq.sub["2"],"O and Superscript E=mc",.docq.sup["2"]," examples.";

t33:t0,enlist .docq.code[`R;"2-3";`sample.q;c:"    sampleFunctParamDict:{[paramDict]\n      show avg[2 3 4];\n      count til 5;    }"];


t4:t0,.docq.t["Cross-referencing"];
t41:t0,enlist "Link to",.docq.ref[`trade`schema];

t50:t0,.docq.t["Lists"];
t5:t0,.docq.st["Bullet List"];
t51:t0,.docq.sst["Bullet List with *"];
t52:t0,.docq.bl[("Bullet 1";"Bulltet 2")];
t53:t0,.docq.sst["Bullet List with -"];
t54:t0,.docq.l[("Bullet 1";"Bulltet 2");"- "];

t6:t0,.docq.t["Enumerated List"];
t61:t0,.docq.nl[("Item 1";"Item 2")];

t7:t0,.docq.t["Tables"];
t71:t0,.docq.st["Simple Table"];
t72:t0,.docq.tab ([] func:key[1_.docq];def:1_value[.docq]);
t73:t0,.docq.st["csv Table"];
t74:t0,.docq.csvt ([] func:key[1_.docq];def:1_value[.docq]);

hsym[ `$getenv[`QDOCS],"\\source\\docQ.rst"]  0:  t01,t1,t2,t20,t3,t31,t32,t33,t4,t41,t50,t5,t51,t52,t53,t54,t6,t61,t7,t71,t72,t73,t74


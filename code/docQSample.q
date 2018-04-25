system "l ",getenv[`QDOCS],"\\code\\docQ.q";

t0:enlist "";

t1:.docq.dt["Document Title"];
t2:.docq.dst["Document Subtitle"];

t3:t0,.docq.t["Test Styles"];
t31:t0,enlist .docq.p["A sample with paragraph, "],.docq.i["italics"],", ",.docq.b["bold"]," and ",.docq.fs["mono-space"]," text style examples.";

t4:t0,.docq.t["Lists"];
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

hsym[ `$getenv[`QDOCS],"\\source\\docQ.rst"]  0:  t1,t2,t3,t31,t4,t5,t51,t52,t53,t54,t6,t61,t7,t71,t72

system "l ",getenv[`QDOCS],"\\code\\docQ.q"

t0:enlist "";

t1:.docq.t["Title"];
t2:.docq.st["Subtitle"];
t3:.docq.p["A sample with paragraph, "],.docq.i["italics"],", ",.docq.b["bold"]," and ",.docq.fs["mono-space"]," example.";

t4:.docq.bl[("Bullet 1";"Bulltet 2")]

t5:.docq.nl[("Item 1";"Item 2")];

t6:.docq.tab ([] func:key[1_.docq];def:1_value[.docq]);

hsym[ `$getenv[`QDOCS],"\\source\\docQ.rst"]  0:  t1,t2,enlist[t3],t0,t4,t0,t5,t6

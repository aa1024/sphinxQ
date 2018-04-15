f:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\example.q";

f2:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\example.txt";

f1:f where f like "/*";

(trim each 1_'f1 ),\:.h.br

(hsym `$getenv[`QREPO],"\\..\\docQ\\example.html") 0: enlist .h.html raze (trim each 1_'f1 ),\:.h.br

.h.ht `$"example"
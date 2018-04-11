f:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\example.q"

f1:f where f like "/*"

(hsym `$getenv[`QREPO],"\\..\\docQ\\example.html") 0: enlist .h.html raze (trim each 1_'f1 ),\:.h.br
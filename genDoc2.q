f:read0 hsym `$getenv[`QREPO],"\\..\\docQ\\table.q";

f1:f where f like "*/*";

f2:1_/:(f1?\:"/")_'f1

tokens:`table`desc`header`row
f2:f2 where any f2 like/:"*@",/:(string tokens ),'"*"

f3:{a:`$" "vs/:x;:a[;0]!trim " "sv/:string 1_/:a}each (string (`$"@"vs/:f2)except\:`)

f3
//should be schmea rather than table



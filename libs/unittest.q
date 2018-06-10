/# @name unittest Unittest helper functions
/# @package lib

\d .unittest

/# @function init Creates a local table and stores the test results generated in ``assert`` function
init:{ .unittest.report:([] fuct:`$()  ; test_res:`boolean$() ; params:() ; exp_res:();act_res:() ); }

init[];

/# @function assert @desc assert function 
/#   @param fn function name
/#   @param p parameters to the function
/#   @param r expected results
/#   @return tr test results
assert:{[fn;p;r]
    //res:$[1=count p;@[ value fn; first p;{`$x}] ;.[value fn; p ;{`$x}]];
    res:$[1=count p;.[ value fn; p;{`$x}] ;.[value fn; p ;{`$x}]];
    tr:res~r;
    `.unittest.report upsert (fn;tr;enlist p; enlist r;enlist res);
    tr
 }

/# @function results returns the test results
/# @return unittest results
results:{ :.unittest.report } 
   
  
 

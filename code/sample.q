/# @name sample Sample functions to demonstrate the usage of tags for document generation

/# @package example

/# @function foo A sample function to generate 
/#. an inline table for input parameter dictionary
/#    @param dict Input Parameter Dictionary   
/#    @return void
/# Param details
/#    @header Key|Type|Required|Default|Desc
/#    @row    startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date)
/#    @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)

foo:{[dict]
    show dict /# show the input on console 
 }


/# @function bar A sample function to display 
/#. a KDB table in various ways
bar:{[]
    /# @toggle-table-eval ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @toggle-code-eval  ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @code-eval         ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @code show dict
    /# @see  lib-str
 }

/# @function foobar Another sample function
/#    @param x  Input Parameter x   
/#    @param y  Input Parameter y   
/#    @return int sum of x & y
/# @toggle Calculate the sum
/# @todo Change the function name?
/# @error Throws an error when input is not numerical 
foobar:{[x;y]

    /# @code-eval " func2[2;3] = ", string1 2+3 /using string1 rather than string to diplay the evaluation error
    /# @code-eval " func2[2;3] = ", string 2+3
    : x+y  /# @toggle-code  (x+y)
 }

tab:([]          /# @schema tab @desc  Stores the trades @header Column Name|Type|Desc
 d:`date$();     /# @row d |date  |Trade Date
 t:`time$();     /# @row t |time  |Trade Time
 s:`g#`$();      /# @row s |symbol|Instrument
 pr:`float$();   /# @row pr|float |Trade Price
 sz:`float$()    /# @row sz|float |Trade Size
 )


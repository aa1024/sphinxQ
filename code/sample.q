/# @name sample Group of sample function for document generation

/# @package example

/# @function func1 A sample function to generate 
/#. an inline table for input parameter dictionary
/#    @param dict Input Parameter Dictionary   
/#    @return void
/# Param details
/#    @header Key|Type|Required|Default|Desc
/#    @row    startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date)
/#    @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)

func1:{[dict]
    show dict /# show the input on console 
    /# @toggle-table-eval ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @toggle-code-eval ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @code-eval ([] d:.z.d-5?10;p:10+.1*5?10)
    /# @code show dict
    
 }

/# @function func2 Another sample function
/#    @param x  Input Parameter x   
/#    @param y  Input Parameter y   
/#    @return int sum of x & y
/# @toggle Calculate the sum
/# @todo Change the function implementation
func2 :{[x;y]
    /# @code-eval " func2[2;3] = ", string 2+3
    : x+y  /# @toggle-code  (x+y)
 }

trade:([]           /# @schema trade @desc  Stores the Trade details @header Column Name|Type|Desc
 date:`date$();     /# @row date|date|Trade Date
 time:`time$();     /# @row time|time|Trade Time
 sym:`g#`$();       /# @row sym|symbol|Instrument Id
 price:`float$();   /# @row price|float|Trade Price
 size:`float$();    /# @row size|float|Trade Size
 side:`$()          /# @row side|symbol|Trade Direction
 )


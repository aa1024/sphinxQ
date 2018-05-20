/# @name Sample Group of sample function for document generation

/# @package example

/# @function func1 A sample function to generate 
/#. an inline table for input parameter dictionary
/#    @param dict Input Parameter Dictionary   
/#    @return
/# Param details
/#    @header Key|Type|Required|Default|Desc
/#    @row    startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date)
/#    @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)

func1:{[dict]
    show dict /# show input
 }

/# @function func2 Another sample function
/#    @param x  Input Parameter x   
/#    @param y  Input Parameter y   
/#    @return sum of x & y

func2 :{[x;y]
    : x+y  /# @toggle-code  (x+y)
 }
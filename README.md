# doc[Q]
A proof of concept around the commenting the q code with some predifined tags which would generate html/wiki style documents.

## Tags

Here are some tags that can be used in the code as comments and it will be automatically parsed and included in the documents.

### @package
Logical group name 

### @desc
Explanation of the function , package, paramaters etc. it will be used as paragraph when the documents are generated.

### @function
Name of the function 

### @alias

### @param
Input Parameter to the function

### @return
Output returned by the function

### @error

### @code

### @see

### @file

### @todo

### @version

### @tags
It can be used to define the keywords that can be found by browsing.  

### @schema
To specify a schema defination ; should be used with @heaader and @ row

### @header
Table header; the columns can be defined using pipe (e.g. `Col1|Col2|Col3`).
It can be used with or without schema tag.

### @row 
Table row; cells are "|" (pipe) separated.


## Rules
* Search for all the lines containing `/**`
* Ingore the second appearance of `/**` just like above line and this line.
* For few tags (package, function, schema etc.), the immediate word after the tag will be traeated as the tag name and rest will be treated as description.

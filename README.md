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

### @eval
The code after this tag will be executed and output will be shown on the generated document.

### @param
Input Parameter to the function

### @return
Output returned by the function

### @error

### @code
Literal code block to be dsiplayed on the generated documents.

### @see

### @file

### @todo

### @version

### @tags
It can be used to define the keywords that can be found by browsing.  

### @schema
To specify a schema defination ; should be used with `@header` and `@row`

### @header
Table header; the columns can be defined using pipe (e.g. `Col1|Col2|Col3`).
It can be used with or without schema tag.

### @row 
Table row; cells are `|` (pipe) separated.


## Rules
* Search for all the lines containing `/##` (which also includes `/##.` for multiline comments)
* Ingore the second appearance of `/##` just like in above line and this line.
* Search the lines which contains tags prefixed by `@` (e.g. `@function` , `@param`)
* For few tags (`package`, `function`, `schema` etc.), the immediate word after the tag will be traeated as the tag name and rest will be treated as description.

## TODO
* Multiline comments support (`/##.`)

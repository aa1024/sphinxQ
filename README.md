# doc[Q]
A proof of concept around the commenting the q code with some predifined tags which would generate html/wiki style documents.

## Tags

Here are some tags that can be used in the code as comments and it will be automatically parsed and included in the documents.

### @name
Title of the documented page, will be displayed as a link on the main index page. 

### @package
Logical group name, it can be used to with multiple files (@name). This will be used for grouping the various @name under the same @package name.

### @desc
Explanation of the function , package, paramaters etc. it will be used as paragraph when the documents are generated.

### @function
Name of the function, displayed as document section title.

### @code
Literal code block to be dsiplayed on the generated documents.

### @eval
The code after this tag will be executed and output will be shown on the generated document.

### @param
Input Parameter to the function

### @return
Output returned by the function

### @header
Table header; the columns can be defined using pipe (e.g. `Col1|Col2|Col3`).
It can be used with or without schema tag.

### @row 
Table row; cells are `|` (pipe) separated.

### @error

### @see

### @todo
Something to be done

### @version

### @tags
It can be used to define the keywords that can be found by browsing.  

### @schema
To specify a schema defination ; should be used with `@header` and `@row`

## Rules
* Search for all the lines containing `/#` (which also includes `/#.` for multiline comments)
* Ingore the second appearance of `/#`.
* Search the lines which contains tags prefixed by `@` (e.g. `@function` , `@param`)
* For few tags (`package`, `function`, `schema` etc.), the immediate word after the tag will be traeated as the tag name and rest will be treated as description.
* Now process each tag along with the content using the `ReST` helper functions.

## TODO
* Multiline comments support (`/#.`)
* Enable @bullet tag
* show hid code/content feature.

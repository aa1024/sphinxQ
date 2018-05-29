### Table of Contents
**[Desc](#sphinxq)**<br>
**[Installation](#installation)**<br>
**[Run](#run)**<br>
**[Tags](#tags)**<br>
**[Tag chaining](#tag-chaining)**<br>
**[Rules](#rules)**<br>
**[Todo](#todo)**<br>
**[Resources](#resources)**<br>

----

# sphinx[Q]
A tool powered by `Sphinx` for documenting the q code with some predefined tags generating HTML/wiki-style documents.

## Installation
### Windows 

Sphinx is written in Python and supports both Python 3.3+ & Python 2.7, You must have [Python 3](http://docs.python-guide.org/en/latest/starting/install3/win/) or [Python 2.7](http://docs.python-guide.org/en/latest/starting/install/win/) installed. However the later is recommended. 

There are multiple ways to get the sphinx installed on the machine, [here](http://www.sphinx-doc.org/en/master/usage/installation.html) is the full wiki on how to get it installed.

A quick way to get the Sphinx installed if you already have Python installed using the *PyPI* (pip)  
 
    C:\> pip install -U sphinx

## Run
    c:\Code\Github\sphinxQ>q run.q

## Tags

Here are some tags that can be used in the code as comments and it will be automatically parsed and included in the documents.

### @name
Title of the documented page, will be displayed as a link on the main index page. 

### @package
Logical group name, it can be used to with multiple files (@name). This will be used for grouping the various @name under the same @package name.

### @desc
Explanation of the function , package, paramaters etc. it will be used as paragraph when the documents are generated.
Any comment without any tag will also be considered as `@desc`.

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

### @todo
Something to be done

### @schema
To specify a schema defination , the formatting of this tag is similar to the `@function` tag; should be used with `@header` and `@row`

### @ bullet
The content followed by this tag will be displayed as a bullet point in documentation. 

### @error
To Display an error message explicitly. The same formating is used to report an error while processing the tags.

### @see

### @tags
It can be used to define the keywords that can be found by browsing.  

### @version

## Tag chaining

Applying the formatting of multiple tag over the same content. Tags can be chained using a `-` e.g. `@toggle-code` means apply the `@toggle` formatting over the output of `@code`.


## Rules
* Search for all the lines containing `/#` (which also includes `/#.` for multiline comments)
* Except for the first delimiter `/#` appearance, all subsequent `/#` will be treated as `@desc` or paragraph.
* Search the lines which contains tags prefixed by `@` (e.g. `@function` , `@param`)
* For few tags (`package`, `function`, `schema` etc.), the immediate word after the tag will be traeated as the tag name and rest will be treated as description.
* In case `@package` or `@name` is defined multiple times, the first entry will used for meta uses (labeling the links , rst naming, document title etc.)
* Now process each tag along with the content using the `ReST` helper functions.

## TODO
* Multiline comments support (`/#.`)
* Enable `@bullet` tag
* show hide code/content feature.
* Handle scenarios when file with same name present in different folders/package.
* libs cyclic dependency
* Handle multiline code scenario

## Resources
* http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter#
* http://www.sphinx-doc.org/en/stable/markup/index.html



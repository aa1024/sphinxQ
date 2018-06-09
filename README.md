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


![](https://github.com/aa1024/sphinxQ/blob/master/source/resources/images/wiki/sample.png)

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

* @name
* @package
* @desc
* @function
* @code
* @eval
* @param
* @return
* @header
* @row 
* @todo
* @schema
* @toggle 
* @ bullet
* @error
* @see
* @tags
* @version

## Tag chaining

Applying the formatting of multiple tags over the same content. Tags can be chained using a `-` e.g. `@toggle-code` means apply the `@toggle` formatting over the output of `@code`.


## Rules
* Search for all the lines containing `/#` (which also includes `/#.` for multiline comments)
* Except for the first delimiter `/#` appearance, all subsequent `/#` will be treated as `@desc` or paragraph.
* Search the lines which contain tags prefixed by `@` (e.g. `@function` , `@param`)
* For few tags (`package`, `function`, `schema` etc.), the immediate word after the tag will be treated as the tag name and rest will be treated as a description.
* In case `@package` or `@name` is defined multiple times, the first entry will be used for meta uses (labeling the links, rst naming, document title etc.)
* Now process each tag along with the content using the `ReST` helper functions.

## TODO
* Multiline comments support (`/#.`)
* Enable `@bullet` tag
* show hide code/content feature.
* Handle scenarios when a file with same name present in different folders/package.
* libs cyclic dependency
* Handle multiline code scenario

## Resources
* http://www.sphinx-doc.org/en/stable/markup/misc.html?highlight=parameter#
* http://www.sphinx-doc.org/en/stable/markup/index.html



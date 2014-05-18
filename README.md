Temple
======

Simple Javascript Templating functions

Temple allows you to easily make dynamic web pages, using a familiar syntax.
Temple is simple (only 60 lines unminified), and can be used in concert with any
other framework as it has no dependencies.

Quick Start
-----------

There is an example web page in `/example/index.html`

```javascript
div({class:'content'}, [

		h1('Temple'),
		h4('Simple javascript templating functions'),

		p('There is a global function for all the html tags'),
		p({class:'red'}, 'You can add attributes to tags with an object'),

		a({href:'http://JAForbes.github.io/temple'}, 
			i(
				p('You can nest any tag in any other tag')
			)
		),

		ul([
			li('Any'),
			li('Tag'),
			li('Can'),
			li('Accept'),
			li('An'),
			li('Array'),
			li('Of'),
			li('Tags')
		])
	])


```

Method Signatures
-----------------

The method signatures are the same for all functions.  
All methods return a HTML string.

Hash to provide attributes:

`a({href:'http://google.com'},'')`

Returns: `"<a href='http://google.com'></a>"`

Second argument is the content wrapped by the tag:

`a({href:'http://google.com},'Content')`

Returns: `"<a href='http://google.com'>Content</a>"`

Single argument signature allows you to pass only the content

`p('No attributes')`

Content can be an array or a string.  This allows you to nest multiple items.

```javascript
ul([
	li('Any'),
	li('Tag'),
	li('Can'),
	li('Accept'),
	li('An'),
	li('Array'),
	li('Of'),
	li('Tags')
])
```

###

	Author: James Forbes
	Date: 2014-18-05
	Version: 0.01
	Licence: MIT

###

do ->

	isObject = (obj) ->
	    obj is Object(obj) 

	tagCreator = (tag) ->
			(attr,content) ->
				if arguments.length is 1
					content = attr

				content = content or '' 
				content = content.join and content.join('') or content

				"""
				  <#{tag}#{attributes(attr)}>#{content}</#{tag}>
				"""

	attributes = (attr) ->
		if isObject(attr)
			result = ("#{key}='#{value}' " for key,value of attr).join ''
			result = result.length > 0 && ' ' + result or result
		else 
			''

	headings = ("h"+i for i in [1..6])
	tags = [
		'div'
		'img'
		'p'
		'a'
		'i'
		'b'
		'script'
		'code'
		'pre'
		'ul'
		'ol'
		'li'
		'canvas'
		'table'
	].concat(headings)

	window[tag] = tagCreator(tag) for tag in (tags)
		
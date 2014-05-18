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

	
	window[tag] = tagCreator(tag) for tag in (['div','h1','img','p','a','script'])
		
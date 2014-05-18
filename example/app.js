function example(){

	return div({class:'content'}, [

		h1('Temple'),
		h4('Simple javascript templating functions'),

		p('There is a global function for all the html tags'),
		p({class:'red'}, 'You can add attributes to tags with an object'),

		a({href:'http://JAForbes.github.io/temple'}, 
			i(
				p('You can nest any tag in any other tag')
			)
		),

		p('You can have just attributes with no content - like the square below'),

		div({class:'square'}),

		ul([
			li('Any'),
			li('Tag'),
			li('Can'),
			li('Accept'),
			li('An'),
			li('Array'),
			li('Of'),
			li('Tags')
		]),


		h2('Source Code for example: '),

		pre(example.toString())
	])
}

document.write(example())
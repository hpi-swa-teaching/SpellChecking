system startup
collection: aCollection contains: anElement

	^ aCollection anySatisfy: [ :element| element = anElement ]
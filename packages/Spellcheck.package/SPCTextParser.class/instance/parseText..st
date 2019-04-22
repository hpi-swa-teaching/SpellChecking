parsing
parseText: aString

	self initializeParser: aString.
	
	self stringToParse do: [ :c |
		(self isSeparator: c) ifTrue: [self storeCurrentWord].
		self incrementLoopVariable].

	self storeCurrentWord.
	
	^ self parsedWords
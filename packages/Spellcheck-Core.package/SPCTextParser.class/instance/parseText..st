parsing
parseText: aString

	self initializeParser: aString.
	
	self stringToParse do: [ :c |
		(self isStringOrCommentMark: c) ifTrue: [ self isInStringToggle ].
		(self isSeparator: c) ifTrue: [self storeCurrentWord].
		self incrementLoopVariable].

	self storeCurrentWord.
	
	^ self parsedWords
parsing
parseText: aString
	self initializeParser: aString.
	self stringToParse do: [ :c |
		(self isSeparator: c) ifTrue: [self storeCurrentWord].
		(self isStringOrCommentMark: c) ifTrue: [ self isInStringToggle ].
		self incrementLoopVariable].
	self storeCurrentWord.
	^ self parsedWords
parsing
parseText: aString
	self initializeParser: aString.
	self stringToParse do: [ :c |
		(self isSeparator: c) ifTrue: [self storeCurrentWord].
		(self isCommentMark: c) ifTrue: [ self isInCommentToggle ].
		(self isInComment) ifFalse: [(self isStringMark: c) ifTrue: [ self isInStringToggle ] ].
		self incrementLoopVariable].
	self storeCurrentWord.
	^ self parsedWords
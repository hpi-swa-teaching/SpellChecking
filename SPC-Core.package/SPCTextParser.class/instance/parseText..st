parsing
parseText: aString

	self initializeParser: aString.
	
	self stringToParse do: [ :c |
		(self isSeparator: c) ifTrue: [self storeCurrentWord].
		self loopCounter: self loopCounter + 1].

	self storeCurrentWord.
	
	^ self parsedWords
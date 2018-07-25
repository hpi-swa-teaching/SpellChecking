parsing
storeCurrentWord

	self endOfCurrentWord: self loopCounter - 1. 
	self currentWordIsNotEmpty ifTrue: [self addCurrentWordToParsedWords].
	self startOfCurrentWord: self loopCounter + 1
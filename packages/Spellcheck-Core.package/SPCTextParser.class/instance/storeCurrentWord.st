parsing
storeCurrentWord

	self endOfCurrentWord: self loopVariable - 1. 
	self currentWordIsNotEmpty ifTrue: [self addCurrentWordToParsedWords].
	self startOfCurrentWord: self loopVariable + 1
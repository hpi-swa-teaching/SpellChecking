as yet unclassified
displayCurrentWrongWord

	keyArray isEmpty ifTrue: [self clear. ^self].
	currentKey := keyArray first. 
	self wrongWordText: (parser getSentenceContextOfWordAt: self startIndex within: inputText string)

	
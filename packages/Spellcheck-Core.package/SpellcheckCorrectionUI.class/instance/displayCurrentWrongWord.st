as yet unclassified
displayCurrentWrongWord

	keyArray isEmpty ifTrue: [self clear. ^self].
	currentKey := keyArray first. 
	selectedIndex := 0.
	self changed: #selectedAlternativeIndex.
	self wrongWordText: (parser getSentenceContextOfWordAt: self startIndex within: inputText string).
	
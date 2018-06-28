as yet unclassified
displayCurrentWrongWord

	keyArray ifEmpty: [self clear. ^self].
	self wrongWordText: (parser getSentenceContextOfWordAt: self startIndex within: inputText string).
	
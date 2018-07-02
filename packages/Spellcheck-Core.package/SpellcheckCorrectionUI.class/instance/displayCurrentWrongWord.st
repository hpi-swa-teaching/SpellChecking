as yet unclassified
displayCurrentWrongWord

	
	keyArray ifEmpty: [self clear. ^self].
	self wrongWordText: (parser getSentenceContextOfWordAt: self startIndex within: inputText string).	
	self wrongWordText: (self wrongWordText asText addAttribute: TextEmphasis bold from: self startIndex to: self endIndex)
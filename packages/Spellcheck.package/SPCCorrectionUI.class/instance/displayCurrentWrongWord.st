displaying
displayCurrentWrongWord
	
	| sentenceStart |
	
	self keyArray ifEmpty: [self clear. ^self].
	self contextSentence: (self parser getSentenceContextOfWordAt: self startIndex within: self inputText string).
		
	sentenceStart := self parser getStartOfSentenceContextOfWordAt: self startIndex within: self inputText string.
	self contextSentence: (self contextSentence asText 
		addAttribute: TextEmphasis bold from: self startIndex - sentenceStart + 1 to: self endIndex - sentenceStart + 1)
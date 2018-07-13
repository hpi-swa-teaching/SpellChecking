as yet unclassified
displayCurrentWrongWord
	
	| sentenceStart |
	
	keyArray ifEmpty: [self clear. ^self].
	self wrongWordText: (parser getSentenceContextOfWordAt: self startIndex within: inputText string).
		
	"get the relative index of the current wrong word in its sentence context, not in the whole input text"
	sentenceStart := parser getSentenceContextStartIndex: self startIndex within: inputText string.
	self wrongWordText: (self wrongWordText asText addAttribute: TextEmphasis bold 
		from: (self startIndex - sentenceStart + 1) to: (self endIndex - sentenceStart + 1))
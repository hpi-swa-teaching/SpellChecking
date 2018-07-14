as yet unclassified
displayCurrentWrongWord
	
	| sentenceStart |
	
	self keyArray ifEmpty: [self clear. ^self].
	self contextSentence: (self parser getSentenceContextOfWordAt: self startIndex within: self inputText string).
		
	"get the relative index of the current wrong word in its sentence context, not in the whole input text"
	sentenceStart := self parser getStartOfSentenceContextOfWordAt: self startIndex within: self inputText string.
	self contextSentence: (self contextSentence asText addAttribute: TextEmphasis bold 
		from: self startIndex - sentenceStart + 1 to: self endIndex - sentenceStart + 1)
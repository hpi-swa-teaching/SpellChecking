as yet unclassified
getStartOfSentenceContextOfWordAt: startIndex within: aText

	| i sentenceStart |
	
	"find end of preceding sentence"
	i := startIndex.
	[i > 0] whileTrue: [ 
		sentenceStart := i.
		(self isSentenceSeparator: (aText at: i)) ifTrue: [ i := 0 ].
		i := i - 1].

	"find actual start of sentence"
	i := sentenceStart. 
	[self isSeparator: (aText at: i)] whileTrue: [
		i := i + 1]. 
	sentenceStart := i.

	^ sentenceStart
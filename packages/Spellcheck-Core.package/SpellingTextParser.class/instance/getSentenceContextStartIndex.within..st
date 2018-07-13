as yet unclassified
getSentenceContextStartIndex: wordStartIndex within: aText

	| i sentenceStart |
	
	sentenceStart := 0.	
	"find end of preceding sentence"
	i := wordStartIndex.
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
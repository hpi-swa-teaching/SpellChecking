as yet unclassified
getEndOfSentenceContextOfWordAt: startIndex within: aText

	| i sentenceEnd |
		
	"find end of sentence"	
	i := startIndex.	
	[i <= aText size] whileTrue: [ 
		sentenceEnd := i.
		(self isSentenceSeparator: (aText at: i)) ifTrue: [ i := aText size ].
		i := i + 1].

	^ sentenceEnd
as yet unclassified
getSentenceContextOfWordAt: startIndex within: aText

	| i sentenceStart sentenceEnd |
	
	sentenceStart := 0. sentenceEnd := 0.
	
	"find end of sentence"	
	i := startIndex.	
	[i <= aText size] whileTrue: [ 
		sentenceEnd := i.
		(self isSentenceSeparator: (aText at: i)) ifTrue: [ i := aText size ].
		i := i + 1.
	].

	"find end of preceding sentence"
	i := startIndex.
	[i > 0] whileTrue: [ 
		sentenceStart := i.
		(self isSentenceSeparator: (aText at: i)) ifTrue: [ i := 0 ].
		i := i - 1.
	].

	"find actual start of sentence"
	i := sentenceStart. 
	[(self isSeparator: (aText at: i))] whileTrue: [
		i := i + 1.
	]. sentenceStart := i.

	^ aText copyFrom: sentenceStart to: sentenceEnd.
as yet unclassified
getSentenceContextOfWordAt: startIndex within: aText

	| i sentenceStart sentenceEnd |
	
	sentenceStart := 0. sentenceEnd := 0.
	
	"find end of sentence"	
	i := startIndex.	
	[i <= aText size] whileTrue: [ 
		((self isSentenceSeparator: (aText at: i)) and: [sentenceEnd = 0]) ifTrue: [ sentenceEnd := i ].
		i := i + 1.
	].

	"find end of preceding sentence"
	i := startIndex.
	[i > 0] whileTrue: [ 
		((self isSentenceSeparator: (aText at: i)) and: [sentenceStart = 0]) ifTrue: [ sentenceStart := i ].
		i := i - 1.
	].

	"find actual start of sentence"
	i := sentenceStart. sentenceStart := 0.
	[i < startIndex] whileTrue: [
		(self isSeparator: (aText at: i)) ifFalse: [ (sentenceStart = 0) ifTrue: [ sentenceStart := i ].].
		i := i + 1.
	].	

	^ aText copyFrom: sentenceStart to: sentenceEnd.
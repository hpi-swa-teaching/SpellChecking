context sentence
getEndOfSentenceContextOfWordAt: startIndex within: aText

	| currentIndex sentenceEnd |
		
	currentIndex := startIndex.	
	[currentIndex <= aText size] whileTrue: [
		sentenceEnd := currentIndex.
		(self isSentenceSeparator: (aText at: currentIndex)) ifTrue: [ currentIndex := aText size ].
		currentIndex := currentIndex + 1].

	^ sentenceEnd
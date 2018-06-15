as yet unclassified
selectedAlternativeIndex: anIndex

	(anIndex = 0 or: [keyArray isEmpty]) ifTrue: [^self].
	inputText replaceFrom: currentKey to: (wrongWords at: currentKey) with: (self alternatives at: anIndex).
	self dismissCurrentDisplayedWord
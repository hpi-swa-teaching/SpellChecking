as yet unclassified
selectedAlternativeIndex: anIndex
	anIndex = 0 ifTrue: [^self].
	inputText replaceFrom: currentKey to: (wrongWords at: currentKey) with: (self alternatives at: anIndex).
	Transcript show: inputText.
	self next.
	"selectedIndex := anIndex."
	"self changed: #selectedAlternativeIndex."
as yet unclassified
selectedAlternativeIndex: anIndex
	anIndex = 0 ifTrue: [^self].
	Transcript show: (self alternatives at: anIndex).
	selectedIndex := anIndex.
	self changed: #selectedAlternativeIndex.
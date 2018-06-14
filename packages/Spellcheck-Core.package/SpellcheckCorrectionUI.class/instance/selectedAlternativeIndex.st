as yet unclassified
selectedAlternativeIndex

	selectedIndex ifNotNil: [^selectedIndex].
	selectedIndex := 0.
	self selectedAlternativeIndex: selectedIndex.
	^selectedIndex
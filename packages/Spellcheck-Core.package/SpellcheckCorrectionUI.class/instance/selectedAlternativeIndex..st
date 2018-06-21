select alternative
selectedAlternativeIndex: anIndex

	(anIndex = 0 or: [keyArray isEmpty]) ifTrue: [^self].
	selectedIndex := anIndex.
	self changed: #selectedAlternativeIndex.
	workspace 
		ifNotNil: [self replaceWorkspaceTextWithAlternative.] 
		ifNil: [inputText replaceFrom: self startIndex to: self endIndex with: (self alternatives at: anIndex).].
	self dismissCurrentDisplayedWord 
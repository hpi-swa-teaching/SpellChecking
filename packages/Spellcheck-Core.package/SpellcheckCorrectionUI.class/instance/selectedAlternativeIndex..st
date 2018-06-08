select alternative
selectedAlternativeIndex: anIndex
	anIndex = 0 ifTrue: [^self].
	selectedIndex := anIndex.
	self changed: #selectedAlternativeIndex.
	workspace 
		ifNotNil: [self replaceWorkspaceTextWithAlternative.] 
		ifNil: [inputText replaceFrom: currentKey to: (wrongWords at: currentKey) with: (self alternatives at: anIndex).].
	self next.
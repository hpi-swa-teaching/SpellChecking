select alternative
selectedAlternative: anObject

	(anObject = nil or: [keyArray isEmpty]) ifTrue: [^self].
	selectedAlternative := anObject.
	self changed: #selectedAlternative.
	workspace 
		ifNotNil: [self replaceWorkspaceTextWithAlternative.] 
		ifNil: [inputText replaceFrom: self startIndex to: self endIndex with: selectedAlternative].
	self dismissCurrentDisplayedWord 
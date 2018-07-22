accessing
selectedAlternative: anObject

	(anObject = nil or: [self keyArray isEmpty]) ifTrue: [	^self].
	selectedAlternative := anObject.
	self changed: #selectedAlternative.
	self replaceTextWithAlternative.
	self dismissCurrentDisplayedWord.
	self deselectAlternative
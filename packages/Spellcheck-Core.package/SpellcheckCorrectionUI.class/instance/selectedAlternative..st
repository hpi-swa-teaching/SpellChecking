select alternative
selectedAlternative: anObject

	(anObject = nil or: [keyArray isEmpty]) ifTrue: [^self].
	selectedAlternative := anObject.
	self changed: #selectedAlternative.
	self replaceTextWithAlternative.
	self dismissCurrentDisplayedWord 
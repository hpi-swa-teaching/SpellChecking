accessing
selectedAlternative: anObject
	(anObject isNil or: [self keyArray isEmpty]) ifTrue: [^self].
	selectedAlternative := anObject.
	self changed: #selectedAlternative;
		replaceTextWithAlternative;
		dismissCurrentDisplayedWord;
		deselectAlternative
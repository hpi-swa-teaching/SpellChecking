spellchecking
isWordCorrect: aString

	self instances do: [ :instance | (instance isWordCorrect: aString) ifTrue: [ ^ true ] ].
	^ false
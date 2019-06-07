spellchecking
isWordCorrect: aString
	(self class libraryExists  and: [ self handleNotNil]) ifTrue: [
		^ (self apiCheckWord: self apiHandle Text: aString) > 0
	] ifFalse: [
		^ true
	]
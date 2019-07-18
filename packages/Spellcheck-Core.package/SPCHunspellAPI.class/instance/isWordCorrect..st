spellchecking
isWordCorrect: aString
	(self class libraryExists  and: [ self handleNotNil]) ifTrue: [
		"Might be a byte array."
		aString isString ifTrue: [
			^ (self apiCheckWord: self apiHandle Text: aString utf8Encoded) > 0
		]
		ifFalse: [
			^ (self apiCheckWord: self apiHandle Text: aString) > 0
		]
	] ifFalse: [
		^ true
	]
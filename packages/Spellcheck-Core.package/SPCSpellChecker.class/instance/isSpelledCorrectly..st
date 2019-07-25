spellchecking
isSpelledCorrectly: aString

	self hunspell isNilObject ifFalse: [
		^ self hunspell isWordCorrect: aString
	].
	^ true
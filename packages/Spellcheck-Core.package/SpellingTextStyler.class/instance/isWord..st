as yet unclassified
isWord: aString

	^ aString allSatisfy: [:char | char isAlphaNumeric]
	
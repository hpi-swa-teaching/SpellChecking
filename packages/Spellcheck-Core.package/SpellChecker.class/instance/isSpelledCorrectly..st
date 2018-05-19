as yet unclassified
isSpelledCorrectly: aString

	| strings |
	(parser isCamelCase: aString) ifTrue: [
		strings := parser parseCamelCaseText: aString.
		^ strings allSatisfy: [ :str | (hunspell isWordCorrect: str) = 1].
		] ifFalse: [^ (hunspell isWordCorrect: aString) = 1].
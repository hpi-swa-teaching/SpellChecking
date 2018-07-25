testing
isStringAlphaNumeric: aString

	^ aString allSatisfy: [:char | char isAlphaNumeric]
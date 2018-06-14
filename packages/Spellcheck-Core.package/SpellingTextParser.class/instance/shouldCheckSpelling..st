as yet unclassified
shouldCheckSpelling: aString

	^ (aString allSatisfy: [:char | char isAlphaNumeric])
as yet unclassified
mistakenWordsIn: aString

	| wrongWords strings |
	
	wrongWords := IdentityDictionary new.
	strings := parser parseTextBySeparator: aString.
	
	strings keysAndValuesDo: [ :startIndex :string |
		(self shouldCheckSpelling: string) ifTrue: [
			(self isSpelledCorrectly: string) ifFalse: [
				wrongWords at: startIndex put: (startIndex + (string size) - 1).
				].
			].
		].
	
	^ wrongWords
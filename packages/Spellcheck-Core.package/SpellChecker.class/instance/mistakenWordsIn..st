as yet unclassified
mistakenWordsIn: aString

	| wrongWords strings |
	
	wrongWords := IdentityDictionary new.
	strings := (parser parseText: aString).
	
	strings keysAndValuesDo: [ :start :end |
		(self shouldCheckSpelling: (aString copyFrom: start to: end)) ifTrue: [
			(hunspell isWordCorrect: (aString copyFrom: start to: end)) ifFalse: [
				wrongWords at: start put: end.
				].
			].
		].
	
	^ wrongWords  
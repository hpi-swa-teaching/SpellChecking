as yet unclassified
misspelledWordsIn: aString

	| wrongWords |
	
	wrongWords := IdentityDictionary new.
	
	(self parser parseText: aString) keysAndValuesDo: [ :start :end |
			(self hunspell isWordCorrect: (aString copyFrom: start to: end)) 
				ifFalse: [wrongWords at: start put: end]].
	
	^ wrongWords  
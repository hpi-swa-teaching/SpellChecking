spellchecking
misspelledWordsIn: aString

	| wrongWords |
	
	wrongWords := IdentityDictionary new.
	"Else the VM will crash."
	self hunspell isNilObject ifFalse: [
		(self parser parseText: aString) keysAndValuesDo: [ :start :end |
				(self hunspell isWordCorrect: (aString copyFrom: start to: end)) 
					ifFalse: [wrongWords at: start put: end]].
	].
	^ wrongWords  
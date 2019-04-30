spellchecking
isWordCorrect: aString
	
	^ (self apiCheckWord: self apiHandle Text: aString) > 0
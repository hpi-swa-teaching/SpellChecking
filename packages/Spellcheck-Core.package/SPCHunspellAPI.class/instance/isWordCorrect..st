spellchecking
isWordCorrect: aString
	
	Transcript showln: (self isInstance).
	^ (self apiCheckWord: self apiHandle Text: aString) > 0
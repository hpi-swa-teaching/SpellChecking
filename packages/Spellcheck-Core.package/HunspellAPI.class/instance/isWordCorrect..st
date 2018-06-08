spellchecking
isWordCorrect: aString

	 ^ ((self apiCheckWord: apiHandle Text: aString) > 0) 
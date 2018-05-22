spellchecking
isWordCorrect: aString

	 ^ ((self apiCheckWord: handle Text: aString) > 0) 
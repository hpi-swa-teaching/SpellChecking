testing
testIgnore

	self deny: (spellChecker isSpelledCorrectly: 'asd').
	spellChecker ignoreWord: 'asd'.
	self assert: (spellChecker isSpelledCorrectly: 'asd').
	spellChecker removeWordFromDictionary: 'asd'.
	self deny: (spellChecker isSpelledCorrectly: 'asd') 

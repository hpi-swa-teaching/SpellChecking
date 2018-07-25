testing
testIgnore

	self deny: (spellChecker isSpelledCorrectly: wrongWord).
	
	spellChecker addWordToIgnoreList: wrongWord.
	self assert: (spellChecker isSpelledCorrectly: wrongWord).
	
	spellChecker removeWordFromIgnoreList: wrongWord.
	self deny: (spellChecker isSpelledCorrectly: wrongWord) 

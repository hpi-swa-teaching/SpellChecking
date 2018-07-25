testing
testIgnore
	
	correctionUI inputText: wrongWord.
	self deny: (spellchecker isSpelledCorrectly: wrongWord).
	
	correctionUI ignore.
	self assert: (spellchecker isSpelledCorrectly: wrongWord).
	
	spellchecker removeWordFromIgnoreList: wrongWord
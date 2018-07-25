testing
testIgnoreCurrent
	
	correctionUI inputText: wrongWord.
	self deny: (spellchecker isSpelledCorrectly: wrongWord).
	
	correctionUI ignoreCurrent.
	self assert: (spellchecker isSpelledCorrectly: wrongWord).
	
	spellchecker removeWordFromIgnoreList: wrongWord
testing
testLoadLanguage

	ui selectedLanguage: 'english'.
	self deny: (ui spellchecker isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'deutsch'.
	self assert: (ui spellchecker isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'english'
	 
	
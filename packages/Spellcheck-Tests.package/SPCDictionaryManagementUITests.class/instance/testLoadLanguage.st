testing
testLoadLanguage

	ui selectedLanguage: 'english'.
	self deny: (SPCSpellChecker instance isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'deutsch'.
	self assert: (SPCSpellChecker instance isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'english'
	 
	
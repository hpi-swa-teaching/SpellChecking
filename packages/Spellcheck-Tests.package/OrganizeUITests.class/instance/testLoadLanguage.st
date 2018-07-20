testing
testLoadLanguage

	ui selectedLanguage: 'english'.
	self deny: (SpellChecker instance isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'deutsch'.
	self assert: (SpellChecker instance isSpelledCorrectly: germanWord).
	
	ui selectedLanguage: 'english'
	 
	
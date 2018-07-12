testing
testLoadLanguage

	ui selectedLanguage: 'english'.
	self deny: (SpellChecker instance isSpelledCorrectly: 'Haus').
	
	ui selectedLanguage: 'deutsch'.
	self assert: (SpellChecker instance isSpelledCorrectly: 'Haus').
	
	ui selectedLanguage: 'english'
	 
	
testing
testLoadLanguage
	| germanLanguageIndex | 
	germanLanguageIndex := self getIndexForObject: SPCHunspellLanguage german languageName inOrderedCollection: ui availableLanguages.
	ui selectedLanguageAt: germanLanguageIndex put: false.
	self deny: (ui spellchecker isSpelledCorrectly: germanWord).
	
	ui selectedLanguageAt: germanLanguageIndex put: true.
	self assert: (ui spellchecker isSpelledCorrectly: germanWord).
	 
	

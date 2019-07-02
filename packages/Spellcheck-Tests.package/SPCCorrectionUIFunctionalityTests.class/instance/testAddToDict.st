testing
testAddToDict
	SPCHunspellAPIDecorator disableDownload: true.
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: true.
	Transcript showln: 'Start Add To Dict.'.
	self deny: (spellchecker isSpelledCorrectly: wrongWord).
	Transcript showln: 'Wrong word is wrong.'.
	correctionUI inputText: wrongWord.
	Transcript showln: 'Did input.'.
	correctionUI addToDictionary.
	Transcript showln: 'Added to dict.'.
	self assert: (spellchecker isSpelledCorrectly: wrongWord).
	
	
	Transcript showln: 'Removing word.'.
	spellchecker removeWordFromDictionary: wrongWord.
	
	Transcript showln: 'Test done.'
testing
testRemovingLanguageWorks
	spellChecker loadedLanguages: nil.
	spellChecker loadLanguage: SPCHunspellLanguage english.
	self assert: (spellChecker isSpelledCorrectly: englishWord).
	spellChecker removeLanguage: SPCHunspellLanguage english.
	self deny: (spellChecker isSpelledCorrectly: englishWord).
	
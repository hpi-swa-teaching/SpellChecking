initialize-release
tearDown
	SPCSpellChecker loadedLanguages: loadedLanguages.
	spellChecker addedWords: addedWords.
	spellChecker parser: SPCTextParser new.
testing
testClearIgnoredWords
	spellChecker addWordToDictionary: wrongWord.
	self assert: (spellChecker isSpelledCorrectly: wrongWord).
	spellChecker clearIgnoredWords.
	self deny: (spellChecker isSpelledCorrectly: wrongWord)
	
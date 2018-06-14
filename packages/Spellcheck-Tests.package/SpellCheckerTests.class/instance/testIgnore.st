as yet unclassified
testIgnore

	self deny: (spellChecker isSpelledCorrectly: 'asd').
	spellChecker ignoreWord: 'asd'.
	self assert: (spellChecker isSpelledCorrectly: 'asd').
	spellChecker reloadHunspellHandle.
	self deny: (spellChecker isSpelledCorrectly: 'asd')
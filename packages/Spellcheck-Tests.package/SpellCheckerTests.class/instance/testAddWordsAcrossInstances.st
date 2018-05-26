as yet unclassified
testAddWordsAcrossInstances
	
	| s |
	spellChecker clearIgnoredWords.
	self assert: spellChecker AddedWords size equals: 0.
	spellChecker addWordToDictionary: 'squeack'.
	s := SpellChecker new.
	self assert: (s isSpelledCorrectly: 'squeack') equals: true.
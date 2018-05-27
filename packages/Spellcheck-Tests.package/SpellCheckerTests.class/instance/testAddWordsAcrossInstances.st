as yet unclassified
testAddWordsAcrossInstances
	
	| s1 s2 |
	spellChecker clearIgnoredWords.
	self assert: spellChecker AddedWords size equals: 0.
	s1 := SpellChecker new.
	spellChecker addWordToDictionary: 'squeack'.
	s2 := SpellChecker new.
	self assert: (s1 isSpelledCorrectly: 'squeack') equals: true.
	self assert: (s2 isSpelledCorrectly: 'squeack') equals: true.

as yet unclassified
testAddWordsAcrossInstances
	
	| s1 s2 |
	spellChecker clearIgnoredWords.
	self assert: spellChecker AddedWords size equals: 0.
	s1 := SpellChecker instance.
	spellChecker addWordToDictionary: 'squeack'.
	s2 := SpellChecker instance.
	self assert: (s1 isSpelledCorrectly: 'squeack').
	self assert: (s2 isSpelledCorrectly: 'squeack')

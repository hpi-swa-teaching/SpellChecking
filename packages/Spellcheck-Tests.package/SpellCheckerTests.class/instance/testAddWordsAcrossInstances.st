testing
testAddWordsAcrossInstances
	
	| spellChecker1 spellChecker2 |

	spellChecker1 := SpellChecker instance.
	spellChecker1 addWordToDictionary: 'squeack'.
	spellChecker2 := SpellChecker instance.
	self assert: (spellChecker1 isSpelledCorrectly: 'squeack').
	self assert: (spellChecker2 isSpelledCorrectly: 'squeack').
	
	SpellChecker instance removeWordFromDictionary: 'squeack'

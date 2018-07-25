testing
testAddWordsAcrossInstances
	
	| spellChecker1 spellChecker2 |

	spellChecker1 := SPCSpellChecker instance.
	spellChecker1 addWordToDictionary: 'squeack'.
	spellChecker2 := SPCSpellChecker instance.
	self assert: (spellChecker1 isSpelledCorrectly: 'squeack').
	self assert: (spellChecker2 isSpelledCorrectly: 'squeack').
	
	SPCSpellChecker instance removeWordFromDictionary: 'squeack'

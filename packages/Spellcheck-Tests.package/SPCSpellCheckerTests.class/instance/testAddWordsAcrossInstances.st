testing
testAddWordsAcrossInstances
	
	| spellChecker1 spellChecker2 |

	spellChecker1 := SPCSpellChecker instance.
	spellChecker2 := SPCSpellChecker instance.
	self deny: (spellChecker1 isSpelledCorrectly: 'squeack').
	self deny: (spellChecker2 isSpelledCorrectly: 'squeack').
	spellChecker1 addWordToDictionary: 'squeack'.
	spellChecker2 := SPCSpellChecker instance.
	self assert: (spellChecker1 isSpelledCorrectly: 'squeack').
	self assert: (spellChecker2 isSpelledCorrectly: 'squeack').
	
	SPCSpellChecker instance removeWordFromDictionary: 'squeack'

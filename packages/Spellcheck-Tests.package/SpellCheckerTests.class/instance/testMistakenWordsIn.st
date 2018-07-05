testing
testMistakenWordsIn

	| result |
	result := spellChecker mistakenWordsIn: 'This is a string wiht a miscake!'.
	self assert: (result at: 18) = 21.
	self assert: (result at: 25) = 31
as yet unclassified
testMistakenWordsIn

	| result |
	result := spellChecker mistakenWordsIn: 'This is a string wiht a miscake !'.
	Transcript show: result.
	self assert: ((result at: 18) = 21).
	self assert: ((result at: 25) = 31)
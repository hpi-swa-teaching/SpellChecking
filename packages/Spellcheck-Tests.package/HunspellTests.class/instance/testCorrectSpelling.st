as yet unclassified
testCorrectSpelling 

	| hunspell |
	hunspell := HunspellAPI new.
	hunspell createHandle.
	self assert: (hunspell checkWord: 'hello') > 0.
	hunspell destroyHandle 
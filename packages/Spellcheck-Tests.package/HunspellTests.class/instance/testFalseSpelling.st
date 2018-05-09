as yet unclassified
testFalseSpelling 

	| hunspell |
	hunspell := HunspellAPI new.
	hunspell createHandle.
	self assert: (hunspell checkWord: 'helo') = 0.
	hunspell destroyHandle
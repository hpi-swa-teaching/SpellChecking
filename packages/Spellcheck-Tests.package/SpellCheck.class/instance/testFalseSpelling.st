as yet unclassified
testFalseSpelling 

	| handle |
	handle := HunspellAPI new.
	handle createHandle.
	self assert: (handle checkWord: 'helo') = 0
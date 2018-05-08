as yet unclassified
testCorrectSpelling 

	| handle |
	handle := HunspellAPI new.
	handle createHandle.
	self assert: (handle checkWord: 'hello') > 0
as yet unclassified
testNoMethodCrashes
	nullObject addWordToDictionary: ''.
	nullObject createHandle.
	nullObject createHandle: '' affix: ''.
	self assert: nullObject apiHandle isNil.
	nullObject destroyHandle.
	nullObject downloadDictionaries.
	nullObject getSuggestions: ''.
	nullObject instances: #().
	nullObject downloadFileTo: '' fromURL: '' toFileNamed: '' inBinary: true.
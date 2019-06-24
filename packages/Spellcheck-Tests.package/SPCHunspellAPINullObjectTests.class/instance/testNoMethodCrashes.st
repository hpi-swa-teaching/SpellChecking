as yet unclassified
testNoMethodCrashes
	nullObject addDictionary: ''.
	nullObject addWordToDictionary: ''.
	nullObject createHandle.
	nullObject createHandle: '' affix: ''.
	self assert: nullObject apiHandle isNil.
	nullObject destroyHandle.
	nullObject downloadDictionaries.
	nullObject getSuggestions: ''
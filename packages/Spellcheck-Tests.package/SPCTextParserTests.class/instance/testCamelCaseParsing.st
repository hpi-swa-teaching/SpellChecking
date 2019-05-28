testing
testCamelCaseParsing

	| strings word |
	self disableStringsOnly.
	
	word := 'aHaXHelloMyNameB'.
	strings := parser parseText: word.
		
	self assert: strings size = 7.
	self assert: (word copyFrom: 5 to: (strings at: 5)) = 'Hello'.
	
	strings := parser parseCamelCaseWord: word.
	
	self assert: strings size = 7.
	self assert: (word copyFrom: 5 to: (strings at: 5)) = 'Hello'
	
as yet unclassified
testCamelCaseParser

	| strings parser |
	
	parser := SpellingTextParser new.
	strings := parser parseCamelCaseText: 'aHaXHelloMyNameB'.
	
	self assert: ((strings at: 1) = 'a').
	self assert: ((strings at: 2) = 'Ha').
	self assert: ((strings at: 3) = 'X').
	self assert: ((strings at: 4) = 'Hello').
	self assert: ((strings at: 5) = 'My').
	self assert: ((strings at: 6) = 'Name').
	self assert: ((strings at: 7) = 'B').
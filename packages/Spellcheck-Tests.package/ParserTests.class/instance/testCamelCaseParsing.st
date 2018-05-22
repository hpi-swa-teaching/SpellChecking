as yet unclassified
testCamelCaseParsing

	| strings parser text |
	
	text := 'aHaXHelloMyNameB'.
	parser := SpellingTextParser new.
	strings := parser parseText: text.
	
	self assert: (strings size = 7).
	self assert: ((text copyFrom: 5 to: (strings at: 5)) = 'Hello') 
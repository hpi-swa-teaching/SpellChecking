testing
testParsingStringsOnlySingleWrongWord

	| strings text|
	
	text := 'a := ''sqeek'''.
	parser parseStringsOnly: true.
	strings := parser parseText: text.
	self assert: (strings size = 1).
	
	parser parseStringsOnly: false
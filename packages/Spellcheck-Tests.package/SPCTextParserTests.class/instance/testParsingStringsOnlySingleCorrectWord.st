testing
testParsingStringsOnlySingleCorrectWord

	| strings text|
	
	text := 'a := ''squeak'''.
	parser parseStringsOnly: true.
	strings := parser parseText: text.
	"Will be spell-checked later, but should have parsed one word."
	self assert: (strings size = 1).
	
	parser parseStringsOnly: false
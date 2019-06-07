testing
testParsingStringsOnlySingleCorrectWord

	| strings text|
	
	text := 'a := ''squeak'''.
	parser parseStringsOnly: true.
	strings := parser parseText: text.
	"Will be spell-checked later, but should have parsed one word."
	self assert: 1 equals: strings size.
	
	parser parseStringsOnly: false
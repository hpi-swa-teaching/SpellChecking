testing
testParsingStringsOnlySingleWrongWord

	| strings text firstWordInStringStart firstWordInStringEnd lastWordInStringStart lastWordInStringEnd|
	firstWordInStringStart := 22.
	firstWordInStringEnd := 25.
	lastWordInStringStart := 54.
	lastWordInStringEnd := 60.
	
	text := 'a := ''squeak'''.
	SPCTextParser parseStringsOnly: true.
	strings := parser parseText: text.
	self assert: (strings size >0).
	
	SPCTextParser parseStringsOnly: false
testing
testParsingStringsOnlyWhenCommentContainsApostrophe

	| strings text |
	
	text := 'aVariable.', $", 'This is a tester', $', 's comment', $", 'wongVariableName := ', $', 'Value', $', 'reverst'.
	SPCTextParser parseStringsOnly: true.
	strings := parser parseText: text.
	
	self assert: ((strings size = 7)).
	
	SPCTextParser parseStringsOnly: false
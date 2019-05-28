testing
testParsingStringsWithApostrophe

	| strings text foundWords |
	parser parseStringsOnly: true.
	text := 'a:= b. "A comment with '' in it." wong := ''squeack'''.
	strings := parser parseText: text.
	foundWords := strings associations select: [ :association |  (#('A' 'comment' 'with' 'in' 'it' 'squeack') includes: (text copyFrom: association key to: association value) ) not ].
	self assert: foundWords  isEmpty.
	
	SPCTextParser parseStringsOnly: false.
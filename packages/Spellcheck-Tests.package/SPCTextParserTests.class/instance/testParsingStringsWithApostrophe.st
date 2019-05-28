testing
testParsingStringsWithApostrophe

	| strings text |
	SPCTextParser parseStringsOnly: true.
	text := 'a:= b. "A comment with '' in it." wong := ''squeack'''.
	strings := parser parseText: text.
	
	self assert: (strings associations select: [ :association |  (#('A' 'comment' 'with' 'in' 'it' 'squeack') includes: (text copyFrom: association key to: association value) ) not ])  isEmpty.
	
	SPCTextParser parseStringsOnly: false.
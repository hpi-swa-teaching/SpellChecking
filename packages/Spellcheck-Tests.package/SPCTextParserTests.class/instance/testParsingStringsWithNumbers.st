testing
testParsingStringsWithNumbers

	| strings text foundWords |
	parser parseStringsOnly: false.
	text := 'hello1'.
	strings := parser parseText: text.
	foundWords := strings associations select: [ :association |  (#('hello' 1) includes: (text copyFrom: association key to: association value) ) not ].
	self assert: foundWords isEmpty.
testing
testParsingStringsOnly

	| strings text firstWordInStringStart firstWordInStringEnd lastWordInStringStart lastWordInStringEnd|
	firstWordInStringStart := 22.
	firstWordInStringEnd := 25.
	lastWordInStringStart := 54.
	lastWordInStringEnd := 60.
	
	text := 'wongVariableName := ', $', 'This is a String in code with a mistace.', $', 'reverst'.
	SPCTextParser parseStringsOnly: true.
	strings := parser parseText: text.
	self assert: ((strings select: [ :value | (value < firstWordInStringEnd or: [value > lastWordInStringEnd])]) size = 0).
	self assert: ((strings associationsSelect: [ :entry | ((entry key < firstWordInStringStart) and: [ entry value < firstWordInStringEnd ]) or: [entry key > lastWordInStringStart and: [ entry value < lastWordInStringEnd ]]]) size = 0).
	
	SPCTextParser parseStringsOnly: false
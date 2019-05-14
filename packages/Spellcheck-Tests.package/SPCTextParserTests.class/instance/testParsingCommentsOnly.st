testing
testParsingCommentsOnly

	| strings text firstWordInCommentStart firstWordInCommentEnd lastWordInCommentStart lastWordInCommentEnd|
	firstWordInCommentStart := 22.
	firstWordInCommentEnd := 25.
	lastWordInCommentStart := 54.
	lastWordInCommentEnd := 60.
	
	text := 'wongVariableName := ',$",'This is a String in code with a mistace.',$", 'reverst'.
	SPCTextParser parseStringsOnly: true.
	strings := parser parseText: text.
	self assert: ((strings select: [ :value | (value < firstWordInCommentEnd or: [value > lastWordInCommentEnd])]) size = 0).
	self assert: ((strings associationsSelect: [ :entry | ((entry key < firstWordInCommentStart) and: [ entry value < firstWordInCommentEnd ]) or: [entry key > lastWordInCommentStart and: [ entry value < lastWordInCommentEnd ]]]) size = 0).
	
	SPCTextParser parseStringsOnly: false
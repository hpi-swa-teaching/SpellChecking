as yet unclassified
testAddParsedWord

	| strings parser text |
	
	text := '...HalloBumbleBee?=)'.
	parser := SpellingTextParser new.
	strings := Dictionary new.
	strings := parser addParsedWord: text from: 4 to: (text size) - 3 into: strings.	
	self assert: (strings size = 3)
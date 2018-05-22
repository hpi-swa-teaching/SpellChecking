as yet unclassified
testParsingWithSeparator

	| strings parser text |
	
	text := 'Hallo    Max.xx;;  qwertz'.
	parser := SpellingTextParser new.
	strings := parser parseText: text.
	
	self assert: ((text copyFrom: 1 to: (strings at: 1)) = 'Hallo').
	self assert: ((text copyFrom: 10 to: (strings at: 10)) = 'Max.xx;;').
	self assert: ((text copyFrom: 20 to: (strings at: 20)) = 'qwertz').
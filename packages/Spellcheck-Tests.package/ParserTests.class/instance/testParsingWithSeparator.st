as yet unclassified
testParsingWithSeparator

	| strings parser text |
	
	text := 'Hallo    Max.xx;;  qwertz,k'.
	parser := SpellingTextParser new.
	strings := parser parseText: text.
	
	self assert: (strings size = 5).
	self assert: ((text copyFrom: 1 to: (strings at: 1)) = 'Hallo').
	self assert: ((text copyFrom: 10 to: (strings at: 10)) = 'Max').
	self assert: ((text copyFrom: 14 to: (strings at: 14)) = 'xx').
	self assert: ((text copyFrom: 20 to: (strings at: 20)) = 'qwertz').
	self assert: ((text copyFrom: 27 to: (strings at: 27)) = 'k').
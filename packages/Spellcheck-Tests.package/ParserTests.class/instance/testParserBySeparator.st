as yet unclassified
testParserBySeparator

	| strings parser |
	
	parser := SpellingTextParser new.
	strings := parser parseTextBySeparator: 'Hallo    Max.xx;;  qwertz'.
	
	self assert: ((strings at: 1) = 'Hallo').
	self assert: ((strings at: 10) = 'Max.xx;;').
	self assert: ((strings at: 20) = 'qwertz').
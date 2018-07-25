testing
testUnstyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.	
	self assert: ((runArray at: wrongWordIndex) includes: (TextColor color: Color orange)).
	
	spellingStyler unstyle: textWithMistake.
	runArray := textWithMistake runs.
	self deny: ((runArray at: wrongWordIndex) includes: (TextColor color: Color orange))
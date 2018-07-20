testing
testPrivateStyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.
	
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	self assert: ((runArray at: wrongWordIndex) includes: (TextColor color: Color orange)).
		
	correctionUIStyler privateStyle: textWithMistake.	
	runArray := textWithMistake runs.
	
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	self assert: ((runArray at: wrongWordIndex) includes: (TextColor color: Color orange))
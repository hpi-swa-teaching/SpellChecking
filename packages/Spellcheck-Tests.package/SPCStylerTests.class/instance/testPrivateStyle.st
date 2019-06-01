testing
testPrivateStyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.
	
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	
	self deny: ( self colorsDiffer: runArray).
	
	correctionUIStyler privateStyle: textWithMistake.	
	runArray := textWithMistake runs.
	
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	self deny: ( self colorsDiffer: runArray).